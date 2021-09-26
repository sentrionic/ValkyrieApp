import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/create_guild/create_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

import '../../fixtures/guild_fixtures.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late CreateGuildCubit createGuildCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    createGuildCubit = CreateGuildCubit(mockGuildRepository);
  });

  group('NameChanged', () {
    final mockGuild = getGuildFixture();
    final name = mockGuild.name.getOrCrash();

    blocTest<CreateGuildCubit, CreateGuildState>(
      'emits the new [GuildName]',
      build: () => createGuildCubit,
      act: (cubit) => cubit.nameChanged(name),
      expect: () => [
        CreateGuildState.initial().copyWith(
          name: GuildName(name),
          guildFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SubmitCreateGuild', () {
    final mockGuild = getGuildFixture();
    final name = mockGuild.name.getOrCrash();

    test('initial CreateGuildState should be CreateGuildState.initial()', () {
      // assert
      expect(createGuildCubit.state, equals(CreateGuildState.initial()));
    });

    blocTest<CreateGuildCubit, CreateGuildState>(
      'emits [initial] states for successful guild creation',
      build: () {
        when(() => mockGuildRepository.createGuild(name)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(mockGuild),
          ),
        );
        createGuildCubit.nameChanged(name);
        return createGuildCubit;
      },
      act: (cubit) => cubit.submitCreateGuild(),
      expect: () => [
        CreateGuildState.initial().copyWith(
          name: GuildName(name),
          isSubmitting: true,
        ),
        CreateGuildState.initial().copyWith(
          name: GuildName(name),
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption: some(right(mockGuild)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.createGuild(name),
        ).called(1);
      },
    );

    blocTest<CreateGuildCubit, CreateGuildState>(
      'emits [initial] states for unsuccessful guild creation',
      build: () {
        when(() => mockGuildRepository.createGuild(name)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        createGuildCubit.nameChanged(name);
        return createGuildCubit;
      },
      act: (cubit) => cubit.submitCreateGuild(),
      expect: () => [
        CreateGuildState.initial().copyWith(
          name: GuildName(name),
          isSubmitting: true,
        ),
        CreateGuildState.initial().copyWith(
          name: GuildName(name),
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption:
              some(left(const GuildFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.createGuild(name),
        ).called(1);
      },
    );

    blocTest<CreateGuildCubit, CreateGuildState>(
      'emits [initial] states for invalid guild name',
      build: () {
        createGuildCubit.nameChanged("");
        return createGuildCubit;
      },
      act: (cubit) => cubit.submitCreateGuild(),
      expect: () => [
        CreateGuildState.initial().copyWith(
          name: GuildName(""),
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockGuildRepository.createGuild(""),
        );
      },
    );
  });
}
