import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/delete_guild/delete_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

import '../../fixtures/faker.dart';

class MockGuildRepository extends Mock implements IGuildRepository {}

void main() {
  late MockGuildRepository mockGuildRepository;
  late DeleteGuildCubit deleteGuildCubit;

  setUp(() {
    mockGuildRepository = MockGuildRepository();
    deleteGuildCubit = DeleteGuildCubit(mockGuildRepository);
  });

  group('DeleteGuild', () {
    final id = getRandomId();

    test('initial GuildDeleteState should be GuildDeleteState.initial()', () {
      // assert
      expect(deleteGuildCubit.state, equals(const DeleteGuildState.initial()));
    });

    blocTest<DeleteGuildCubit, DeleteGuildState>(
      'emits [actionInProgress, deleteSuccess] states for successful guild deletion',
      build: () {
        when(() => mockGuildRepository.deleteGuild(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return deleteGuildCubit;
      },
      act: (cubit) => cubit.deleteGuild(id),
      expect: () => [
        const DeleteGuildState.actionInProgress(),
        const DeleteGuildState.deleteSuccess(),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.deleteGuild(id),
        ).called(1);
      },
    );

    blocTest<DeleteGuildCubit, DeleteGuildState>(
      'emits [actionInProgress, deleteFailure] states for unsuccessful guild deletion',
      build: () {
        when(() => mockGuildRepository.deleteGuild(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const GuildFailure.unexpected()),
          ),
        );
        return deleteGuildCubit;
      },
      act: (cubit) => cubit.deleteGuild(id),
      expect: () => [
        const DeleteGuildState.actionInProgress(),
        const DeleteGuildState.deleteFailure(GuildFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => mockGuildRepository.deleteGuild(id),
        ).called(1);
      },
    );
  });
}
