import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/friends/remove_friend/remove_friend_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

import '../../fixtures/faker.dart';

class MockFriendRepository extends Mock implements IFriendRepository {}

void main() {
  late MockFriendRepository repository;
  late RemoveFriendCubit removeFriendCubit;

  setUp(() {
    repository = MockFriendRepository();
    removeFriendCubit = RemoveFriendCubit(repository);
  });

  group('RemoveFriend', () {
    final id = getRandomId();

    test('initial RemoveFriendState should be RemoveFriendState.initial()', () {
      // assert
      expect(
        removeFriendCubit.state,
        equals(const RemoveFriendState.initial()),
      );
    });

    blocTest<RemoveFriendCubit, RemoveFriendState>(
      'emits [actionInProgress, actionSuccess] states for successful removal',
      build: () {
        when(() => repository.removeFriend(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return removeFriendCubit;
      },
      act: (cubit) => cubit.removeFriend(id),
      expect: () => [
        const RemoveFriendState.actionInProgress(),
        const RemoveFriendState.actionSuccess(),
      ],
      verify: (_) {
        verify(
          () => repository.removeFriend(id),
        ).called(1);
      },
    );

    blocTest<RemoveFriendCubit, RemoveFriendState>(
      'emits [actionInProgress, actionFailure] states for unsuccessful removal',
      build: () {
        when(() => repository.removeFriend(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const FriendFailure.unexpected()),
          ),
        );
        return removeFriendCubit;
      },
      act: (cubit) => cubit.removeFriend(id),
      expect: () => [
        const RemoveFriendState.actionInProgress(),
        const RemoveFriendState.actionFailure(FriendFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.removeFriend(id),
        ).called(1);
      },
    );
  });
}
