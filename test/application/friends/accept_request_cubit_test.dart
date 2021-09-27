import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/friends/accept_request/accept_request_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

import '../../fixtures/faker.dart';

class MockFriendRepository extends Mock implements IFriendRepository {}

void main() {
  late MockFriendRepository repository;
  late AcceptRequestCubit acceptRequestCubit;

  setUp(() {
    repository = MockFriendRepository();
    acceptRequestCubit = AcceptRequestCubit(repository);
  });

  group('AcceptRequest', () {
    final id = getRandomId();

    test('initial AcceptRequestState should be AcceptRequestState.initial()',
        () {
      // assert
      expect(
        acceptRequestCubit.state,
        equals(const AcceptRequestState.initial()),
      );
    });

    blocTest<AcceptRequestCubit, AcceptRequestState>(
      'emits [actionInProgress, actionSuccess] states for successful acceptance',
      build: () {
        when(() => repository.acceptRequest(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return acceptRequestCubit;
      },
      act: (cubit) => cubit.acceptFriendRequest(id),
      expect: () => [
        const AcceptRequestState.actionInProgress(),
        AcceptRequestState.actionSuccess(id),
      ],
      verify: (_) {
        verify(
          () => repository.acceptRequest(id),
        ).called(1);
      },
    );

    blocTest<AcceptRequestCubit, AcceptRequestState>(
      'emits [actionInProgress, actionFailure] states for unsuccessful acceptance',
      build: () {
        when(() => repository.acceptRequest(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const FriendFailure.unexpected()),
          ),
        );
        return acceptRequestCubit;
      },
      act: (cubit) => cubit.acceptFriendRequest(id),
      expect: () => [
        const AcceptRequestState.actionInProgress(),
        const AcceptRequestState.actionFailure(FriendFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.acceptRequest(id),
        ).called(1);
      },
    );
  });
}
