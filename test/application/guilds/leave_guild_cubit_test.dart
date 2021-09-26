import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/leave_guild/leave_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

import '../../fixtures/faker.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late LeaveGuildCubit leaveGuildCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    leaveGuildCubit = LeaveGuildCubit(mockGuildRepository);
  });

  group('LeaveGuild', () {
    final id = getRandomId();

    test('initial LeaveGuildState should be LeaveGuildState.initial()', () {
      // assert
      expect(leaveGuildCubit.state, equals(const LeaveGuildState.initial()));
    });

    blocTest<LeaveGuildCubit, LeaveGuildState>(
      'emits [actionInProgress, deleteSuccess] states for successful leaving',
      build: () {
        when(() => mockGuildRepository.leaveGuild(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return leaveGuildCubit;
      },
      act: (cubit) => cubit.leaveGuild(id),
      expect: () => [
        const LeaveGuildState.actionInProgress(),
        const LeaveGuildState.leaveSuccess(),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.leaveGuild(id),
        ).called(1);
      },
    );

    blocTest<LeaveGuildCubit, LeaveGuildState>(
      'emits [actionInProgress, deleteFailure] states for unsuccessful leaving',
      build: () {
        when(() => mockGuildRepository.leaveGuild(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        return leaveGuildCubit;
      },
      act: (cubit) => cubit.leaveGuild(id),
      expect: () => [
        const LeaveGuildState.actionInProgress(),
        const LeaveGuildState.leaveFailure(GuildFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.leaveGuild(id),
        ).called(1);
      },
    );
  });
}
