import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/members/ban_list/ban_list_cubit.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/guild_fixtures.dart';

class MockMemberRepository extends Mock implements IMemberRepository {}

void main() {
  late MockMemberRepository repository;
  late BanListCubit listCubit;

  setUp(() {
    repository = MockMemberRepository();
    listCubit = BanListCubit(repository);
  });

  void _setUpGetGuildBansSuccess(List<BannedMember> list, String guildId) {
    when(() => repository.getBanList(guildId)).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('BanList', () {
    final banList = getBannedListFixture();
    final guildId = getRandomId();

    test('initial BanListState should be BanListState.initial()', () {
      // assert
      expect(listCubit.state, equals(const BanListState.initial()));
    });

    blocTest<BanListCubit, BanListState>(
      'emits [loadInProgress, loadSuccess] states for successful ban list fetch',
      build: () {
        _setUpGetGuildBansSuccess(banList, guildId);
        return listCubit;
      },
      act: (cubit) => cubit.getGuildBanList(guildId),
      expect: () => [
        const BanListState.loadInProgress(),
        BanListState.loadSuccess(banList)
      ],
      verify: (_) {
        verify(() => repository.getBanList(guildId)).called(1);
      },
    );

    blocTest<BanListCubit, BanListState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful ban list fetch',
      build: () {
        when(() => repository.getBanList(guildId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MemberFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getGuildBanList(guildId),
      expect: () => [
        const BanListState.loadInProgress(),
        const BanListState.loadFailure(MemberFailure.unexpected())
      ],
      verify: (_) {
        verify(() => repository.getBanList(guildId)).called(1);
      },
    );
  });

  group('RemoveBan', () {
    final banList = getBannedListFixture();
    final guildId = getRandomId();

    final mockBan = getBannedFixture();

    blocTest<BanListCubit, BanListState>(
      'successfully removes the ban for the given guildId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetGuildBansSuccess([...banList, mockBan], guildId);
        await listCubit.getGuildBanList(guildId);
        listCubit.removeBan(mockBan.id);
      },
      expect: () => [
        const BanListState.loadInProgress(),
        BanListState.loadSuccess([...banList, mockBan]),
        BanListState.loadSuccess(banList),
      ],
    );

    test('removes the ban from the list', () async {
      // arrange
      _setUpGetGuildBansSuccess([...banList, mockBan], guildId);
      await listCubit.getGuildBanList(guildId);

      // act
      listCubit.removeBan(mockBan.id);

      // assert
      expect(
        listCubit.state,
        equals(BanListState.loadSuccess(banList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, banList.length);
          expect(state.where((g) => g.id == mockBan.id).toList(), []);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not remove the ban if the state is not BanListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.removeBan(mockBan.id);

      // assert
      expect(listCubit.state, equals(const BanListState.initial()));
    });

    test('does not remove a ban if it cannot find a ban for the id', () async {
      // arrange
      _setUpGetGuildBansSuccess([...banList, mockBan], guildId);
      await listCubit.getGuildBanList(guildId);

      // act
      listCubit.removeBan(mockBan.id);

      // assert
      expect(
        listCubit.state,
        equals(BanListState.loadSuccess(banList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, banList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });
}
