import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/user_fixtures.dart';

class MockMemberRepository extends Mock implements IMemberRepository {}

void main() {
  late MockMemberRepository repository;
  late MemberListCubit listCubit;

  setUp(() {
    repository = MockMemberRepository();
    listCubit = MemberListCubit(repository);
  });

  void _setUpGetUserMembersSuccess(List<Member> list, String guildId) {
    when(() => repository.getGuildMembers(guildId)).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('MemberList', () {
    final membersList = getMemberListFixture();
    final guildId = getRandomId();

    test('initial MemberListState should be MemberListState.initial()', () {
      // assert
      expect(listCubit.state, equals(const MemberListState.initial()));
    });

    blocTest<MemberListCubit, MemberListState>(
      'emits [loadInProgress, loadSuccess] states for successful member list fetch',
      build: () {
        _setUpGetUserMembersSuccess(membersList, guildId);
        return listCubit;
      },
      act: (cubit) => cubit.getGuildMembers(guildId),
      expect: () => [
        const MemberListState.loadInProgress(),
        MemberListState.loadSuccess(membersList)
      ],
      verify: (_) {
        verify(() => repository.getGuildMembers(guildId)).called(1);
      },
    );

    blocTest<MemberListCubit, MemberListState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful member list fetch',
      build: () {
        when(() => repository.getGuildMembers(guildId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MemberFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getGuildMembers(guildId),
      expect: () => [
        const MemberListState.loadInProgress(),
        const MemberListState.loadFailure(MemberFailure.unexpected())
      ],
      verify: (_) {
        verify(() => repository.getGuildMembers(guildId)).called(1);
      },
    );
  });

  group('GetOnlineMembers', () {
    final membersList = [
      getMemberFixture(),
      getMemberFixture(),
    ];
    final offlineList = [
      getMemberFixture().copyWith(isOnline: false),
      getMemberFixture().copyWith(isOnline: false),
    ];

    final guildId = getRandomId();

    test('successfully returns members that are online', () async {
      // arrange
      _setUpGetUserMembersSuccess([...membersList, ...offlineList], guildId);
      await listCubit.getGuildMembers(guildId);

      // act
      final online = listCubit.getOnlineMembers();

      // assert
      expect(online.length, 2);
      expect(online, membersList);
    });

    test(
        'returns an empty array if the state is not MemberListState.loadSuccess()',
        () async {
      // arrange

      // act
      final list = listCubit.getOnlineMembers();

      // assert
      expect(list, []);
      expect(listCubit.state, equals(const MemberListState.initial()));
    });
  });

  group('GetOfflineMembers', () {
    final membersList = [
      getMemberFixture(),
      getMemberFixture(),
    ];
    final offlineList = [
      getMemberFixture().copyWith(isOnline: false),
      getMemberFixture().copyWith(isOnline: false),
    ];

    final guildId = getRandomId();

    test('successfully returns members that are offline', () async {
      // arrange
      _setUpGetUserMembersSuccess([...membersList, ...offlineList], guildId);
      await listCubit.getGuildMembers(guildId);

      // act
      final offline = listCubit.getOfflineMembers();

      // assert
      expect(offline.length, 2);
      expect(offline, offlineList);
    });

    test(
        'returns an empty array if the state is not MemberListState.loadSuccess()',
        () async {
      // arrange

      // act
      final list = listCubit.getOfflineMembers();

      // assert
      expect(list, []);
      expect(listCubit.state, equals(const MemberListState.initial()));
    });
  });

  group('AddNewMember', () {
    final member1 = getMemberFixture().copyWith(username: "A");
    final member2 = getMemberFixture().copyWith(nickname: "B");
    final member3 = getMemberFixture().copyWith(username: "D");

    final newMember = getMemberFixture().copyWith(nickname: "C");
    final guildId = getRandomId();

    blocTest<MemberListCubit, MemberListState>(
      'successfully adds the new member',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserMembersSuccess([member1, member2, member3], guildId);
        await listCubit.getGuildMembers(guildId);
        listCubit.addNewMember(newMember);
      },
      expect: () => [
        const MemberListState.loadInProgress(),
        MemberListState.loadSuccess([member1, member2, member3]),
        MemberListState.loadSuccess([member1, member2, newMember, member3]),
      ],
    );

    test('adds the new member and sorts the list', () async {
      // arrange
      _setUpGetUserMembersSuccess([member1, member2, member3], guildId);
      await listCubit.getGuildMembers(guildId);

      // act
      listCubit.addNewMember(newMember);

      // assert
      expect(
        listCubit.state,
        equals(
          MemberListState.loadSuccess([member1, member2, newMember, member3]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, 4);
          expect(state.last, member3);
          expect(state.first, member1);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not add the member if the state is not MemberListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addNewMember(newMember);

      // assert
      expect(listCubit.state, equals(const MemberListState.initial()));
    });
  });

  group('RemoveMember', () {
    final memberList = getMemberListFixture();
    final mockMember = getMemberFixture();
    final guildId = getRandomId();

    blocTest<MemberListCubit, MemberListState>(
      'successfully removes the member for the given userId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserMembersSuccess([...memberList, mockMember], guildId);
        await listCubit.getGuildMembers(guildId);
        listCubit.removeMember(mockMember.id);
      },
      expect: () => [
        const MemberListState.loadInProgress(),
        MemberListState.loadSuccess([...memberList, mockMember]),
        MemberListState.loadSuccess(memberList),
      ],
    );

    test('removes the member from the list', () async {
      // arrange
      _setUpGetUserMembersSuccess([...memberList, mockMember], guildId);
      await listCubit.getGuildMembers(guildId);

      // act
      listCubit.removeMember(mockMember.id);

      // assert
      expect(
        listCubit.state,
        equals(MemberListState.loadSuccess(memberList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, memberList.length);
          expect(state.where((g) => g.id == mockMember.id).toList(), []);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not remove the member if the state is not MemberListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.removeMember(mockMember.id);

      // assert
      expect(listCubit.state, equals(const MemberListState.initial()));
    });

    test('does not remove a member if it cannot find a member for the id',
        () async {
      // arrange
      _setUpGetUserMembersSuccess(memberList, guildId);
      await listCubit.getGuildMembers(guildId);

      // act
      listCubit.removeMember(mockMember.id);

      // assert
      expect(
        listCubit.state,
        equals(MemberListState.loadSuccess(memberList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, memberList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('ToggleOnlineStatus', () {
    final memberList = getMemberListFixture();
    final mockMember = getMemberFixture();
    final editedMember = mockMember.copyWith(isOnline: false);
    final guildId = getRandomId();

    blocTest<MemberListCubit, MemberListState>(
      "successfully edits the member's online status for the given id",
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserMembersSuccess([...memberList, mockMember], guildId);
        await listCubit.getGuildMembers(guildId);
        listCubit.toggleOnlineStatus(mockMember.id, isOnline: false);
      },
      expect: () => [
        const MemberListState.loadInProgress(),
        MemberListState.loadSuccess([...memberList, mockMember]),
        MemberListState.loadSuccess([...memberList, editedMember]),
      ],
    );

    test('successfully sets the new online status of the member', () async {
      // arrange
      _setUpGetUserMembersSuccess([...memberList, mockMember], guildId);
      await listCubit.getGuildMembers(guildId);

      // act
      listCubit.toggleOnlineStatus(mockMember.id, isOnline: false);

      // assert
      expect(
        listCubit.state,
        equals(
          MemberListState.loadSuccess([...memberList, editedMember]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, memberList.length + 1);
          expect(state.last, editedMember);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not edit the channel if the state is not MemberListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.toggleOnlineStatus(mockMember.id, isOnline: false);

      // assert
      expect(listCubit.state, equals(const MemberListState.initial()));
    });
  });
}
