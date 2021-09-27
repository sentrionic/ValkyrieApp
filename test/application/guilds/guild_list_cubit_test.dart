import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/guild_fixtures.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late GuildListCubit listCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    listCubit = GuildListCubit(mockGuildRepository);
  });

  void _setUpGetUserGuildsSuccess(List<Guild> list) {
    when(() => mockGuildRepository.getUserGuilds()).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('GetUserGuilds', () {
    final guildList = getGuildListFixture();

    test('initial GuildListState should be GuildListState.initial()', () {
      // assert
      expect(listCubit.state, equals(const GuildListState.initial()));
    });

    blocTest<GuildListCubit, GuildListState>(
      'emits [loadInProgress, loadSuccess] states for successful guild list fetch',
      build: () {
        _setUpGetUserGuildsSuccess(guildList);
        return listCubit;
      },
      act: (cubit) => cubit.getGuilds(),
      expect: () => [
        const GuildListState.loadInProgress(),
        GuildListState.loadSuccess(guildList)
      ],
      verify: (_) {
        verify(() => mockGuildRepository.getUserGuilds()).called(1);
      },
    );

    blocTest<GuildListCubit, GuildListState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful guild list fetch',
      build: () {
        when(() => mockGuildRepository.getUserGuilds()).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getGuilds(),
      expect: () => [
        const GuildListState.loadInProgress(),
        const GuildListState.loadFailure(GuildFailure.unexpected())
      ],
      verify: (_) {
        verify(() => mockGuildRepository.getUserGuilds()).called(1);
      },
    );
  });

  group('GetCurrentGuild', () {
    final guildList = getGuildListFixture();

    test('successfully returns the guild for the given guildId', () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      final id = guildList[getRandomInt(0, guildList.length - 1)].id;
      final guild = listCubit.getCurrentGuild(id);

      // assert
      expect(guild, isNotNull);
      expect(guild?.id, id);
    });

    test('returns null if it cannot find the guild', () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      final guild = listCubit.getCurrentGuild("-1");

      // assert
      expect(guild, isNull);
    });

    test('returns null if the state is not GuildListState.loadSuccess()',
        () async {
      // arrange

      // act
      final guild = listCubit.getCurrentGuild("1");

      // assert
      expect(guild, isNull);
      expect(listCubit.state, equals(const GuildListState.initial()));
    });
  });

  group('GetCurrentIndex', () {
    final guildList = getGuildListFixture();

    test(
        'successfully returns the index in the GuildListState for the given guildId',
        () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      final position = getRandomInt(0, guildList.length - 1);
      final id = guildList[position].id;
      final index = listCubit.getCurrentIndex(id);

      // assert
      expect(index, isNot(-1));
      expect(index, position);
    });

    test('returns null if it cannot find the guild', () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      final index = listCubit.getCurrentIndex("-1");

      // assert
      expect(index, -1);
    });

    test('returns -1 if the state is not GuildListState.loadSuccess()',
        () async {
      // arrange

      // act
      final index = listCubit.getCurrentIndex("1");

      // assert
      expect(index, -1);
      expect(listCubit.state, equals(const GuildListState.initial()));
    });
  });

  group('AddNewGuild', () {
    final guildList = getGuildListFixture();
    final mockGuild = getGuildFixture();

    blocTest<GuildListCubit, GuildListState>(
      'successfully adds the new guild',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserGuildsSuccess(guildList);
        await listCubit.getGuilds();
        listCubit.addNewGuild(mockGuild);
      },
      expect: () => [
        const GuildListState.loadInProgress(),
        GuildListState.loadSuccess(guildList),
        GuildListState.loadSuccess([...guildList, mockGuild]),
      ],
    );

    test('adds the new guild at the end of the list', () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      listCubit.addNewGuild(mockGuild);

      // assert
      expect(
        listCubit.state,
        equals(GuildListState.loadSuccess([...guildList, mockGuild])),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length + 1);
          expect(state.last, mockGuild);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not add the guild if the state is not GuildListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addNewGuild(mockGuild);

      // assert
      expect(listCubit.state, equals(const GuildListState.initial()));
    });
  });

  group('RemoveGuild', () {
    final guildList = getGuildListFixture();
    final mockGuild = getGuildFixture();

    blocTest<GuildListCubit, GuildListState>(
      'successfully removes the guild for the given guildId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
        await listCubit.getGuilds();
        listCubit.removeGuild(mockGuild.id);
      },
      expect: () => [
        const GuildListState.loadInProgress(),
        GuildListState.loadSuccess([...guildList, mockGuild]),
        GuildListState.loadSuccess(guildList),
      ],
    );

    test('removes the guild from the list', () async {
      // arrange
      _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
      await listCubit.getGuilds();

      // act
      listCubit.removeGuild(mockGuild.id);

      // assert
      expect(
        listCubit.state,
        equals(GuildListState.loadSuccess(guildList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length);
          expect(state.where((g) => g.id == mockGuild.id).toList(), []);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not remove the guild if the state is not GuildListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.removeGuild(mockGuild.id);

      // assert
      expect(listCubit.state, equals(const GuildListState.initial()));
    });

    test('does not remove a guild if it cannot find a guild for the id',
        () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      listCubit.removeGuild(mockGuild.id);

      // assert
      expect(
        listCubit.state,
        equals(GuildListState.loadSuccess(guildList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('EditGuild', () {
    final guildList = getGuildListFixture();
    final mockGuild = getGuildFixture();
    final editedGuild = mockGuild.copyWith(name: GuildName(getRandomName()));

    blocTest<GuildListCubit, GuildListState>(
      'successfully edits the guild for the given guild',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
        await listCubit.getGuilds();
        listCubit.editGuild(editedGuild);
      },
      expect: () => [
        const GuildListState.loadInProgress(),
        GuildListState.loadSuccess([...guildList, mockGuild]),
        GuildListState.loadSuccess([...guildList, editedGuild]),
      ],
    );

    test('successfully edits the guild', () async {
      // arrange
      _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
      await listCubit.getGuilds();

      // act
      listCubit.editGuild(editedGuild);

      // assert
      expect(
        listCubit.state,
        equals(GuildListState.loadSuccess([...guildList, editedGuild])),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length + 1);
          expect(state.last, editedGuild);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not edit the guild if the state is not GuildListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.editGuild(mockGuild);

      // assert
      expect(listCubit.state, equals(const GuildListState.initial()));
    });

    test('does not edit a guild if it cannot find the guild', () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      listCubit.editGuild(mockGuild);

      // assert
      expect(
        listCubit.state,
        equals(GuildListState.loadSuccess(guildList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('AddNotification', () {
    final guildList = getGuildListFixture();
    final mockGuild = getGuildFixture();

    blocTest<GuildListCubit, GuildListState>(
      'successfully sets "hasNotification" to true for the given guildId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
        await listCubit.getGuilds();
        listCubit.addNotification(mockGuild.id);
      },
      expect: () => [
        const GuildListState.loadInProgress(),
        GuildListState.loadSuccess([...guildList, mockGuild]),
        GuildListState.loadSuccess(
          [...guildList, mockGuild.copyWith(hasNotification: true)],
        ),
      ],
    );

    test('successfully sets "hasNotification" to true', () async {
      // arrange
      _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
      await listCubit.getGuilds();

      // act
      listCubit.addNotification(mockGuild.id);

      // assert
      expect(
        listCubit.state,
        equals(
          GuildListState.loadSuccess([
            ...guildList,
            mockGuild.copyWith(hasNotification: true),
          ]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length + 1);
          expect(state.last, mockGuild.copyWith(hasNotification: true));
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not change the notification of the guild if the state is not GuildListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addNotification(mockGuild.id);

      // assert
      expect(listCubit.state, equals(const GuildListState.initial()));
    });

    test(
        'does not change the notification of a guild if it cannot find the guild',
        () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      listCubit.addNotification(mockGuild.id);

      // assert
      expect(
        listCubit.state,
        equals(GuildListState.loadSuccess(guildList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('ClearNotification', () {
    final guildList = getGuildListFixture();
    final mockGuild = getGuildFixture().copyWith(hasNotification: true);

    blocTest<GuildListCubit, GuildListState>(
      'successfully sets "hasNotification" to false for the given guildId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
        await listCubit.getGuilds();
        listCubit.clearNotification(mockGuild.id);
      },
      expect: () => [
        const GuildListState.loadInProgress(),
        GuildListState.loadSuccess([...guildList, mockGuild]),
        GuildListState.loadSuccess(
          [...guildList, mockGuild.copyWith(hasNotification: false)],
        ),
      ],
    );

    test('successfully sets "hasNotification" to false', () async {
      // arrange
      _setUpGetUserGuildsSuccess([...guildList, mockGuild]);
      await listCubit.getGuilds();

      // act
      listCubit.clearNotification(mockGuild.id);

      // assert
      expect(
        listCubit.state,
        equals(
          GuildListState.loadSuccess([
            ...guildList,
            mockGuild.copyWith(hasNotification: false),
          ]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length + 1);
          expect(state.last, mockGuild.copyWith(hasNotification: false));
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not change the notification of the guild if the state is not GuildListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.clearNotification(mockGuild.id);

      // assert
      expect(listCubit.state, equals(const GuildListState.initial()));
    });

    test(
        'does not change the notification of a guild if it cannot find the guild',
        () async {
      // arrange
      _setUpGetUserGuildsSuccess(guildList);
      await listCubit.getGuilds();

      // act
      listCubit.clearNotification(mockGuild.id);

      // assert
      expect(
        listCubit.state,
        equals(GuildListState.loadSuccess(guildList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, guildList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });
}
