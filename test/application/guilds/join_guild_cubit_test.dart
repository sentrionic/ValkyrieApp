import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/join_guild/join_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/guild_fixtures.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late JoinGuildCubit joinGuildCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    joinGuildCubit = JoinGuildCubit(mockGuildRepository);
  });

  group('LinkChanged', () {
    final link = getRandomString(12);

    blocTest<JoinGuildCubit, JoinGuildState>(
      'emits the new [InviteLink]',
      build: () => joinGuildCubit,
      act: (cubit) => cubit.linkChanged(link),
      expect: () => [
        JoinGuildState.initial().copyWith(
          inviteLink: InviteLink(link),
          guildFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SubmitJoinGuild', () {
    final mockGuild = getGuildFixture();
    final link = getRandomString(12);

    test('initial GuildListState should be JoinGuildState.initial()', () {
      // assert
      expect(joinGuildCubit.state, equals(JoinGuildState.initial()));
    });

    blocTest<JoinGuildCubit, JoinGuildState>(
      'emits [initial] states for successful guild join',
      build: () {
        when(() => mockGuildRepository.joinGuild(link)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(mockGuild),
          ),
        );
        joinGuildCubit.linkChanged(link);
        return joinGuildCubit;
      },
      act: (cubit) => cubit.submitJoinGuild(),
      expect: () => [
        JoinGuildState.initial().copyWith(
          inviteLink: InviteLink(link),
          isSubmitting: true,
        ),
        JoinGuildState.initial().copyWith(
          inviteLink: InviteLink(link),
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption: some(right(mockGuild)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.joinGuild(link),
        ).called(1);
      },
    );

    blocTest<JoinGuildCubit, JoinGuildState>(
      'emits [initial] states for unsuccessful guild join',
      build: () {
        when(() => mockGuildRepository.joinGuild(link)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        joinGuildCubit.linkChanged(link);
        return joinGuildCubit;
      },
      act: (cubit) => cubit.submitJoinGuild(),
      expect: () => [
        JoinGuildState.initial().copyWith(
          inviteLink: InviteLink(link),
          isSubmitting: true,
        ),
        JoinGuildState.initial().copyWith(
          inviteLink: InviteLink(link),
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption:
              some(left(const GuildFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.joinGuild(link),
        ).called(1);
      },
    );

    blocTest<JoinGuildCubit, JoinGuildState>(
      'emits [initial] states for invalid link',
      build: () {
        joinGuildCubit.linkChanged("");
        return joinGuildCubit;
      },
      act: (cubit) => cubit.submitJoinGuild(),
      expect: () => [
        JoinGuildState.initial().copyWith(
          inviteLink: InviteLink(""),
          isSubmitting: false,
          showErrorMessages: true,
          guildFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockGuildRepository.joinGuild(""),
        );
      },
    );
  });
}
