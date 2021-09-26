import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/invalidate_invites/invalidate_invites_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

import '../../fixtures/faker.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late InvalidateInvitesCubit invalidateInvitesCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    invalidateInvitesCubit = InvalidateInvitesCubit(mockGuildRepository);
  });

  group('InvalidateInvites', () {
    final id = getRandomId();

    test(
        'initial InvalidateInvitesState should be InvalidateInvitesState.initial()',
        () {
      // assert
      expect(
        invalidateInvitesCubit.state,
        equals(const InvalidateInvitesState.initial()),
      );
    });

    blocTest<InvalidateInvitesCubit, InvalidateInvitesState>(
      'emits [actionInProgress, deleteSuccess] states for successful invites deletion',
      build: () {
        when(() => mockGuildRepository.invalidateInviteLink(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return invalidateInvitesCubit;
      },
      act: (cubit) => cubit.invalidateInvites(id),
      expect: () => [
        const InvalidateInvitesState.actionInProgress(),
        const InvalidateInvitesState.deleteSuccess(),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.invalidateInviteLink(id),
        ).called(1);
      },
    );

    blocTest<InvalidateInvitesCubit, InvalidateInvitesState>(
      'emits [actionInProgress, deleteFailure] states for unsuccessful invites deletion',
      build: () {
        when(() => mockGuildRepository.invalidateInviteLink(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        return invalidateInvitesCubit;
      },
      act: (cubit) => cubit.invalidateInvites(id),
      expect: () => [
        const InvalidateInvitesState.actionInProgress(),
        const InvalidateInvitesState.deleteFailure(GuildFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.invalidateInviteLink(id),
        ).called(1);
      },
    );
  });
}
