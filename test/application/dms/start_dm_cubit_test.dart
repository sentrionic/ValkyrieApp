import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

import '../../fixtures/channel_fixtures.dart';
import '../../fixtures/faker.dart';

class MockDMRepository extends Mock implements IDMRepository {}

void main() {
  late MockDMRepository repository;
  late StartDMCubit startDMCubit;

  setUp(() {
    repository = MockDMRepository();
    startDMCubit = StartDMCubit(repository);
  });

  group('StartDM', () {
    final mockChannel = getDMFixture();
    final memberId = getRandomId();

    test('initial StartDMState should be StartDMState.initial()', () {
      // assert
      expect(startDMCubit.state, equals(const StartDMState.initial()));
    });

    blocTest<StartDMCubit, StartDMState>(
      'emits [fetchInProgress, fetchSuccess] states for successful dm fetch',
      build: () {
        when(() => repository.getOrCreateDirectMessage(memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(mockChannel),
          ),
        );
        return startDMCubit;
      },
      act: (cubit) => cubit.getOrCreateDM(memberId),
      expect: () => [
        const StartDMState.fetchInProgress(),
        StartDMState.fetchSuccess(mockChannel)
      ],
      verify: (_) {
        verify(() => repository.getOrCreateDirectMessage(memberId)).called(1);
      },
    );

    blocTest<StartDMCubit, StartDMState>(
      'emits [fetchInProgress, fetchFailure] states for unsuccessful dm fetch',
      build: () {
        when(() => repository.getOrCreateDirectMessage(memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const DMChannelFailure.unexpected()),
          ),
        );
        return startDMCubit;
      },
      act: (cubit) => cubit.getOrCreateDM(memberId),
      expect: () => [
        const StartDMState.fetchInProgress(),
        const StartDMState.fetchFailure(DMChannelFailure.unexpected())
      ],
      verify: (_) {
        verify(() => repository.getOrCreateDirectMessage(memberId)).called(1);
      },
    );
  });
}
