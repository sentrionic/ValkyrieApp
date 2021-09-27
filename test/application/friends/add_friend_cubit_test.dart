import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/friends/add_friend/add_friend_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';
import 'package:valkyrie_app/domain/friends/value_objects.dart';

import '../../fixtures/faker.dart';

class MockFriendRepository extends Mock implements IFriendRepository {}

void main() {
  late MockFriendRepository repository;
  late AddFriendCubit addFriendCubit;

  setUp(() {
    repository = MockFriendRepository();
    addFriendCubit = AddFriendCubit(repository);
  });

  group('IdChanged', () {
    final id = getRandomId();

    blocTest<AddFriendCubit, AddFriendState>(
      'emits the new [UID]',
      build: () => addFriendCubit,
      act: (cubit) => cubit.idChanged(id),
      expect: () => [
        AddFriendState.initial().copyWith(
          uid: UID(id),
          failureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SendFriendRequest', () {
    final userId = getRandomId();

    test('initial AddFriendState should be AddFriendState.initial()', () {
      // assert
      expect(addFriendCubit.state, equals(AddFriendState.initial()));
    });

    blocTest<AddFriendCubit, AddFriendState>(
      'emits [initial] states for successful friend request',
      build: () {
        when(() => repository.sendFriendRequest(userId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        addFriendCubit.idChanged(userId);
        return addFriendCubit;
      },
      act: (cubit) => cubit.sendFriendRequest(),
      expect: () => [
        AddFriendState.initial().copyWith(
          uid: UID(userId),
          isSubmitting: true,
        ),
        AddFriendState.initial().copyWith(
          uid: UID(userId),
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.sendFriendRequest(userId),
        ).called(1);
      },
    );

    blocTest<AddFriendCubit, AddFriendState>(
      'emits [initial] states for unsuccessful friend request',
      build: () {
        when(() => repository.sendFriendRequest(userId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const FriendFailure.unexpected()),
          ),
        );
        addFriendCubit.idChanged(userId);
        return addFriendCubit;
      },
      act: (cubit) => cubit.sendFriendRequest(),
      expect: () => [
        AddFriendState.initial().copyWith(
          uid: UID(userId),
          isSubmitting: true,
        ),
        AddFriendState.initial().copyWith(
          uid: UID(userId),
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSuccessOption: some(left(const FriendFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.sendFriendRequest(userId),
        ).called(1);
      },
    );

    blocTest<AddFriendCubit, AddFriendState>(
      'emits [initial] states for invalid id',
      build: () {
        addFriendCubit.idChanged("");
        return addFriendCubit;
      },
      act: (cubit) => cubit.sendFriendRequest(),
      expect: () => [
        AddFriendState.initial().copyWith(
          uid: UID(""),
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => repository.sendFriendRequest(""),
        );
      },
    );
  });
}
