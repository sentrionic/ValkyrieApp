import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/friends/decline_request/decline_request_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

import '../../fixtures/faker.dart';

class MockFriendRepository extends Mock implements IFriendRepository {}

void main() {
  late MockFriendRepository repository;
  late DeclineRequestCubit declineRequestCubit;

  setUp(() {
    repository = MockFriendRepository();
    declineRequestCubit = DeclineRequestCubit(repository);
  });

  group('DeclineRequest', () {
    final id = getRandomId();

    test('initial DeclineRequestState should be DeclineRequestState.initial()',
        () {
      // assert
      expect(
        declineRequestCubit.state,
        equals(const DeclineRequestState.initial()),
      );
    });

    blocTest<DeclineRequestCubit, DeclineRequestState>(
      'emits [actionInProgress, actionSuccess] states for successful request decline',
      build: () {
        when(() => repository.declineRequest(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return declineRequestCubit;
      },
      act: (cubit) => cubit.declineRequest(id),
      expect: () => [
        const DeclineRequestState.actionInProgress(),
        DeclineRequestState.actionSuccess(id),
      ],
      verify: (_) {
        verify(
          () => repository.declineRequest(id),
        ).called(1);
      },
    );

    blocTest<DeclineRequestCubit, DeclineRequestState>(
      'emits [actionInProgress, actionFailure] states for unsuccessful request decline',
      build: () {
        when(() => repository.declineRequest(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const FriendFailure.unexpected()),
          ),
        );
        return declineRequestCubit;
      },
      act: (cubit) => cubit.declineRequest(id),
      expect: () => [
        const DeclineRequestState.actionInProgress(),
        const DeclineRequestState.actionFailure(FriendFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.declineRequest(id),
        ).called(1);
      },
    );
  });
}
