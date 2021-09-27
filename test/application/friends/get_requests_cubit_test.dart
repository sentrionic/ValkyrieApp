import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/friends/get_requests/get_requests_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

import '../../fixtures/user_fixtures.dart';

class MockFriendRepository extends Mock implements IFriendRepository {}

void main() {
  late MockFriendRepository repository;
  late GetRequestsCubit listCubit;

  setUp(() {
    repository = MockFriendRepository();
    listCubit = GetRequestsCubit(repository);
  });

  void _setUpGetUserRequestsSuccess(List<FriendRequest> list) {
    when(() => repository.getPendingRequests()).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('GetRequests', () {
    final requestList = getRequestListFixture();

    test('initial GetRequestsState should be GetRequestsState.initial()', () {
      // assert
      expect(listCubit.state, equals(const GetRequestsState.initial()));
    });

    blocTest<GetRequestsCubit, GetRequestsState>(
      'emits [loadInProgress, loadSuccess] states for successful request list fetch',
      build: () {
        _setUpGetUserRequestsSuccess(requestList);
        return listCubit;
      },
      act: (cubit) => cubit.getFriendRequests(),
      expect: () => [
        const GetRequestsState.loadInProgress(),
        GetRequestsState.loadSuccess(requestList)
      ],
      verify: (_) {
        verify(() => repository.getPendingRequests()).called(1);
      },
    );

    blocTest<GetRequestsCubit, GetRequestsState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful request list fetch',
      build: () {
        when(() => repository.getPendingRequests()).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const FriendFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getFriendRequests(),
      expect: () => [
        const GetRequestsState.loadInProgress(),
        const GetRequestsState.loadFailure(FriendFailure.unexpected())
      ],
      verify: (_) {
        verify(() => repository.getPendingRequests()).called(1);
      },
    );
  });

  group('AddRequest', () {
    final request1 = getRequestFixture().copyWith(username: "A");
    final request2 = getRequestFixture().copyWith(username: "B");
    final request3 = getRequestFixture().copyWith(username: "D");

    final newRequest = getRequestFixture().copyWith(username: "C");

    blocTest<GetRequestsCubit, GetRequestsState>(
      'successfully adds the new request',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserRequestsSuccess([request1, request2, request3]);
        await listCubit.getFriendRequests();
        listCubit.addRequest(newRequest);
      },
      expect: () => [
        const GetRequestsState.loadInProgress(),
        GetRequestsState.loadSuccess([request1, request2, request3]),
        GetRequestsState.loadSuccess(
          [request1, request2, newRequest, request3],
        ),
      ],
    );

    test('adds the new request and sorts the list', () async {
      // arrange
      _setUpGetUserRequestsSuccess([request1, request2, request3]);
      await listCubit.getFriendRequests();

      // act
      listCubit.addRequest(newRequest);

      // assert
      expect(
        listCubit.state,
        equals(
          GetRequestsState.loadSuccess(
            [request1, request2, newRequest, request3],
          ),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, 4);
          expect(state.last, request3);
          expect(state.first, request1);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not add the request if the state is not GetRequestsState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addRequest(newRequest);

      // assert
      expect(listCubit.state, equals(const GetRequestsState.initial()));
    });
  });

  group('RemoveRequest', () {
    final requestList = getRequestListFixture();
    final mockRequest = getRequestFixture();

    blocTest<GetRequestsCubit, GetRequestsState>(
      'successfully removes the request for the given userId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserRequestsSuccess([...requestList, mockRequest]);
        await listCubit.getFriendRequests();
        listCubit.removeRequest(mockRequest.id);
      },
      expect: () => [
        const GetRequestsState.loadInProgress(),
        GetRequestsState.loadSuccess([...requestList, mockRequest]),
        GetRequestsState.loadSuccess(requestList),
      ],
    );

    test('removes the request from the list', () async {
      // arrange
      _setUpGetUserRequestsSuccess([...requestList, mockRequest]);
      await listCubit.getFriendRequests();

      // act
      listCubit.removeRequest(mockRequest.id);

      // assert
      expect(
        listCubit.state,
        equals(GetRequestsState.loadSuccess(requestList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, requestList.length);
          expect(state.where((g) => g.id == mockRequest.id).toList(), []);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not remove the request if the state is not GetRequestsState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.removeRequest(mockRequest.id);

      // assert
      expect(listCubit.state, equals(const GetRequestsState.initial()));
    });

    test('does not remove a request if it cannot find a request for the id',
        () async {
      // arrange
      _setUpGetUserRequestsSuccess(requestList);
      await listCubit.getFriendRequests();

      // act
      listCubit.removeRequest(mockRequest.id);

      // assert
      expect(
        listCubit.state,
        equals(GetRequestsState.loadSuccess(requestList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, requestList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });
}
