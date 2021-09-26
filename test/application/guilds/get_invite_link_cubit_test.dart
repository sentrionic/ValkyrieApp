import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/get_invite_link/get_invite_link_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

import '../../fixtures/faker.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late GetInviteLinkCubit inviteLinkCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    inviteLinkCubit = GetInviteLinkCubit(mockGuildRepository);
  });

  group('GetInviteLink', () {
    final link = getRandomString(12);
    final id = getRandomId();

    test('initial GetInviteLinkState should be GetInviteLinkState.initial()',
        () {
      // assert
      expect(inviteLinkCubit.state, equals(const GetInviteLinkState.initial()));
    });

    blocTest<GetInviteLinkCubit, GetInviteLinkState>(
      'emits [loadInProgress, loadSuccess] states for successful invite fetch',
      build: () {
        when(() => mockGuildRepository.getInviteLink(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(link),
          ),
        );
        return inviteLinkCubit;
      },
      act: (cubit) => cubit.getInviteLink(id),
      expect: () => [
        const GetInviteLinkState.fetchInProgress(),
        GetInviteLinkState.fetchSuccess(link)
      ],
      verify: (_) {
        verify(() => mockGuildRepository.getInviteLink(id)).called(1);
      },
    );

    blocTest<GetInviteLinkCubit, GetInviteLinkState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful link fetch',
      build: () {
        when(() => mockGuildRepository.getInviteLink(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        return inviteLinkCubit;
      },
      act: (cubit) => cubit.getInviteLink(id),
      expect: () => [
        const GetInviteLinkState.fetchInProgress(),
        const GetInviteLinkState.fetchFailure(GuildFailure.unexpected())
      ],
    );
  });
}
