import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/edit_guild/edit_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/guild_fixtures.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late EditGuildCubit editGuildCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    editGuildCubit = EditGuildCubit(mockGuildRepository);
  });

  group('Initialize', () {
    final mockGuild = getGuildFixture();
    final name = mockGuild.name.getOrCrash();

    blocTest<EditGuildCubit, EditGuildState>(
      'emits the current [GuildName, Icon]',
      build: () => editGuildCubit,
      act: (cubit) => cubit.initialize(mockGuild),
      expect: () => [
        EditGuildState.initial().copyWith(
          name: GuildName(name),
          iconUrl: mockGuild.icon,
        ),
      ],
    );
  });

  group('NameChanged', () {
    final newName = getRandomName();

    blocTest<EditGuildCubit, EditGuildState>(
      'emits the new [GuildName]',
      build: () => editGuildCubit,
      act: (cubit) => cubit.nameChanged(newName),
      expect: () => [
        EditGuildState.initial().copyWith(
          name: GuildName(newName),
          guildFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('IconChanged', () {
    final newIcon = File("test.png");

    blocTest<EditGuildCubit, EditGuildState>(
      'emits the new [Icon]',
      build: () => editGuildCubit,
      act: (cubit) => cubit.iconChanged(newIcon),
      expect: () => [
        EditGuildState.initial().copyWith(
          icon: newIcon,
          guildFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('RemoveIcon', () {
    blocTest<EditGuildCubit, EditGuildState>(
      'emits the reset [Icon]',
      build: () => editGuildCubit,
      act: (cubit) => cubit.removeIcon(),
      expect: () => [
        EditGuildState.initial().copyWith(
          icon: null,
          guildFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SubmitEditGuild', () {
    final mockGuild = getGuildFixture();

    final newName = getRandomName();
    final newIcon = File("test.png");

    test('initial EditGuildState should be EditGuildState.initial()', () {
      // assert
      expect(editGuildCubit.state, equals(EditGuildState.initial()));
    });

    blocTest<EditGuildCubit, EditGuildState>(
      'emits [initial] state for successful guild edit',
      build: () {
        when(
          () => mockGuildRepository.editGuild(
            mockGuild.id,
            newName,
            newIcon,
            null,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        editGuildCubit.initialize(mockGuild);
        editGuildCubit.nameChanged(newName);
        editGuildCubit.iconChanged(newIcon);
        return editGuildCubit;
      },
      act: (cubit) => cubit.submitEditGuild(mockGuild.id),
      expect: () => [
        EditGuildState.initial().copyWith(
          name: GuildName(newName),
          icon: newIcon,
          isSubmitting: true,
        ),
        EditGuildState.initial().copyWith(
          name: GuildName(newName),
          icon: newIcon,
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.editGuild(
            mockGuild.id,
            newName,
            newIcon,
            null,
          ),
        ).called(1);
      },
    );

    blocTest<EditGuildCubit, EditGuildState>(
      'emits [initial] state for unsuccessful guild edit',
      build: () {
        when(
          () => mockGuildRepository.editGuild(
            mockGuild.id,
            newName,
            newIcon,
            null,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        editGuildCubit.initialize(mockGuild);
        editGuildCubit.nameChanged(newName);
        editGuildCubit.iconChanged(newIcon);
        return editGuildCubit;
      },
      act: (cubit) => cubit.submitEditGuild(mockGuild.id),
      expect: () => [
        EditGuildState.initial().copyWith(
          name: GuildName(newName),
          icon: newIcon,
          isSubmitting: true,
        ),
        EditGuildState.initial().copyWith(
          name: GuildName(newName),
          icon: newIcon,
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption:
              some(left(const GuildFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.editGuild(
            mockGuild.id,
            newName,
            newIcon,
            null,
          ),
        ).called(1);
      },
    );

    blocTest<EditGuildCubit, EditGuildState>(
      'emits [initial] state for invalid guild name',
      build: () {
        editGuildCubit.initialize(mockGuild);
        editGuildCubit.nameChanged("");
        return editGuildCubit;
      },
      act: (cubit) => cubit.submitEditGuild(mockGuild.id),
      expect: () => [
        EditGuildState.initial().copyWith(
          name: GuildName(""),
          icon: null,
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockGuildRepository.editGuild("", "", null, null),
        );
      },
    );
  });
}
