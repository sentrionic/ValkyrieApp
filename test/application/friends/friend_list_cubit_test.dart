import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

import '../../fixtures/user_fixtures.dart';

class MockFriendRepository extends Mock implements IFriendRepository {}

void main() {
  late MockFriendRepository repository;
  late GetFriendsCubit listCubit;

  setUp(() {
    repository = MockFriendRepository();
    listCubit = GetFriendsCubit(repository);
  });

  void _setUpGetUserFriendsSuccess(List<Friend> list) {
    when(() => repository.getFriends()).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('GetFriends', () {
    final friendsList = getFriendListFixture();

    test('initial GetFriendsState should be GetFriendsState.initial()', () {
      // assert
      expect(listCubit.state, equals(const GetFriendsState.initial()));
    });

    blocTest<GetFriendsCubit, GetFriendsState>(
      'emits [loadInProgress, loadSuccess] states for successful friend list fetch',
      build: () {
        _setUpGetUserFriendsSuccess(friendsList);
        return listCubit;
      },
      act: (cubit) => cubit.getFriends(),
      expect: () => [
        const GetFriendsState.loadInProgress(),
        GetFriendsState.loadSuccess(friendsList)
      ],
      verify: (_) {
        verify(() => repository.getFriends()).called(1);
      },
    );

    blocTest<GetFriendsCubit, GetFriendsState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful friend list fetch',
      build: () {
        when(() => repository.getFriends()).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const FriendFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getFriends(),
      expect: () => [
        const GetFriendsState.loadInProgress(),
        const GetFriendsState.loadFailure(FriendFailure.unexpected())
      ],
      verify: (_) {
        verify(() => repository.getFriends()).called(1);
      },
    );
  });

  group('GetOnlineFriends', () {
    final friendsList = [
      getFriendFixture(),
      getFriendFixture(),
    ];
    final offlineList = [
      getFriendFixture().copyWith(isOnline: false),
      getFriendFixture().copyWith(isOnline: false),
    ];

    test('successfully returns friends that are online', () async {
      // arrange
      _setUpGetUserFriendsSuccess([...friendsList, ...offlineList]);
      await listCubit.getFriends();

      // act
      final online = listCubit.getOnlineFriends();

      // assert
      expect(online.length, 2);
      expect(online, friendsList);
    });

    test(
        'returns an empty array if the state is not GetFriendsState.loadSuccess()',
        () async {
      // arrange

      // act
      final list = listCubit.getOnlineFriends();

      // assert
      expect(list, []);
      expect(listCubit.state, equals(const GetFriendsState.initial()));
    });
  });

  group('GetOfflineFriends', () {
    final friendsList = [
      getFriendFixture(),
      getFriendFixture(),
    ];
    final offlineList = [
      getFriendFixture().copyWith(isOnline: false),
      getFriendFixture().copyWith(isOnline: false),
    ];

    test('successfully returns friends that are offline', () async {
      // arrange
      _setUpGetUserFriendsSuccess([...friendsList, ...offlineList]);
      await listCubit.getFriends();

      // act
      final offline = listCubit.getOfflineFriends();

      // assert
      expect(offline.length, 2);
      expect(offline, offlineList);
    });

    test(
        'returns an empty array if the state is not GetFriendsState.loadSuccess()',
        () async {
      // arrange

      // act
      final list = listCubit.getOfflineFriends();

      // assert
      expect(list, []);
      expect(listCubit.state, equals(const GetFriendsState.initial()));
    });
  });

  group('AddFriend', () {
    final friend1 = getFriendFixture().copyWith(username: "A");
    final friend2 = getFriendFixture().copyWith(username: "B");
    final friend3 = getFriendFixture().copyWith(username: "D");

    final newFriend = getFriendFixture().copyWith(username: "C");

    blocTest<GetFriendsCubit, GetFriendsState>(
      'successfully adds the new friend',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserFriendsSuccess([friend1, friend2, friend3]);
        await listCubit.getFriends();
        listCubit.addFriend(newFriend);
      },
      expect: () => [
        const GetFriendsState.loadInProgress(),
        GetFriendsState.loadSuccess([friend1, friend2, friend3]),
        GetFriendsState.loadSuccess([friend1, friend2, newFriend, friend3]),
      ],
    );

    test('adds the new friend and sorts the list', () async {
      // arrange
      _setUpGetUserFriendsSuccess([friend1, friend2, friend3]);
      await listCubit.getFriends();

      // act
      listCubit.addFriend(newFriend);

      // assert
      expect(
        listCubit.state,
        equals(
          GetFriendsState.loadSuccess([friend1, friend2, newFriend, friend3]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, 4);
          expect(state.last, friend3);
          expect(state.first, friend1);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not add the friend if the state is not GetFriendsState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addFriend(newFriend);

      // assert
      expect(listCubit.state, equals(const GetFriendsState.initial()));
    });
  });

  group('RemoveFriend', () {
    final friendList = getFriendListFixture();
    final mockFriend = getFriendFixture();

    blocTest<GetFriendsCubit, GetFriendsState>(
      'successfully removes the friend for the given userId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserFriendsSuccess([...friendList, mockFriend]);
        await listCubit.getFriends();
        listCubit.removeFriend(mockFriend.id);
      },
      expect: () => [
        const GetFriendsState.loadInProgress(),
        GetFriendsState.loadSuccess([...friendList, mockFriend]),
        GetFriendsState.loadSuccess(friendList),
      ],
    );

    test('removes the friend from the list', () async {
      // arrange
      _setUpGetUserFriendsSuccess([...friendList, mockFriend]);
      await listCubit.getFriends();

      // act
      listCubit.removeFriend(mockFriend.id);

      // assert
      expect(
        listCubit.state,
        equals(GetFriendsState.loadSuccess(friendList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, friendList.length);
          expect(state.where((g) => g.id == mockFriend.id).toList(), []);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not remove the friend if the state is not GetFriendsState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.removeFriend(mockFriend.id);

      // assert
      expect(listCubit.state, equals(const GetFriendsState.initial()));
    });

    test('does not remove a friend if it cannot find a friend for the id',
        () async {
      // arrange
      _setUpGetUserFriendsSuccess(friendList);
      await listCubit.getFriends();

      // act
      listCubit.removeFriend(mockFriend.id);

      // assert
      expect(
        listCubit.state,
        equals(GetFriendsState.loadSuccess(friendList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, friendList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('ToggleOnlineStatus', () {
    final friendList = getFriendListFixture();
    final mockFriend = getFriendFixture();
    final editedFriend = mockFriend.copyWith(isOnline: false);

    blocTest<GetFriendsCubit, GetFriendsState>(
      "successfully edits the friend's online status for the given id",
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserFriendsSuccess([...friendList, mockFriend]);
        await listCubit.getFriends();
        listCubit.toggleOnlineStatus(mockFriend.id, isOnline: false);
      },
      expect: () => [
        const GetFriendsState.loadInProgress(),
        GetFriendsState.loadSuccess([...friendList, mockFriend]),
        GetFriendsState.loadSuccess([...friendList, editedFriend]),
      ],
    );

    test('successfully sets the new online status of the friend', () async {
      // arrange
      _setUpGetUserFriendsSuccess([...friendList, mockFriend]);
      await listCubit.getFriends();

      // act
      listCubit.toggleOnlineStatus(mockFriend.id, isOnline: false);

      // assert
      expect(
        listCubit.state,
        equals(
          GetFriendsState.loadSuccess([...friendList, editedFriend]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, friendList.length + 1);
          expect(state.last, editedFriend);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not edit the channel if the state is not GetFriendsState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.toggleOnlineStatus(mockFriend.id, isOnline: false);

      // assert
      expect(listCubit.state, equals(const GetFriendsState.initial()));
    });
  });
}
