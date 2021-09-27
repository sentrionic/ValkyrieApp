import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/friends/send_friend_request/send_friend_request_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

import '../../fixtures/faker.dart';

class MockFriendRepository extends Mock implements IFriendRepository {}

void main() {
  late MockFriendRepository repository;
  late SendFriendRequestCubit sendFriendRequestCubit;

  setUp(() {
    repository = MockFriendRepository();
    sendFriendRequestCubit = SendFriendRequestCubit(repository);
  });

  group('SendFriendRequest', () {
    final id = getRandomId();

    test(
        'initial SendFriendRequestState should be SendFriendRequestState.initial()',
        () {
      // assert
      expect(
        sendFriendRequestCubit.state,
        equals(const SendFriendRequestState.initial()),
      );
    });

    blocTest<SendFriendRequestCubit, SendFriendRequestState>(
      'emits [actionInProgress, actionSuccess] states for successful request',
      build: () {
        when(() => repository.sendFriendRequest(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return sendFriendRequestCubit;
      },
      act: (cubit) => cubit.sendFriendRequest(id),
      expect: () => [
        const SendFriendRequestState.actionInProgress(),
        const SendFriendRequestState.actionSuccess(),
      ],
      verify: (_) {
        verify(
          () => repository.sendFriendRequest(id),
        ).called(1);
      },
    );

    blocTest<SendFriendRequestCubit, SendFriendRequestState>(
      'emits [actionInProgress, actionFailure] states for unsuccessful request',
      build: () {
        when(() => repository.sendFriendRequest(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const FriendFailure.unexpected()),
          ),
        );
        return sendFriendRequestCubit;
      },
      act: (cubit) => cubit.sendFriendRequest(id),
      expect: () => [
        const SendFriendRequestState.actionInProgress(),
        const SendFriendRequestState.actionFailure(FriendFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.sendFriendRequest(id),
        ).called(1);
      },
    );
  });
}
