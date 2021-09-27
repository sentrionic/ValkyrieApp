import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/dms/close_dm/close_dm_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

import '../../fixtures/faker.dart';

class MockDMRepository extends Mock implements IDMRepository {}

void main() {
  late MockDMRepository repository;
  late CloseDMCubit closeDMCubit;

  setUp(() {
    repository = MockDMRepository();
    closeDMCubit = CloseDMCubit(repository);
  });

  group('CloseDM', () {
    final id = getRandomId();

    test('initial CloseDMState should be CloseDMState.initial()', () {
      // assert
      expect(
        closeDMCubit.state,
        equals(const CloseDMState.initial()),
      );
    });

    blocTest<CloseDMCubit, CloseDMState>(
      'emits [actionInProgress, closeSuccess] states for successful channel deletion',
      build: () {
        when(() => repository.closeDM(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return closeDMCubit;
      },
      act: (cubit) => cubit.closeChannel(id),
      expect: () => [
        const CloseDMState.actionInProgress(),
        const CloseDMState.closeSuccess(),
      ],
      verify: (_) {
        verify(
          () => repository.closeDM(id),
        ).called(1);
      },
    );

    blocTest<CloseDMCubit, CloseDMState>(
      'emits [actionInProgress, deleteFailure] states for unsuccessful channel deletion',
      build: () {
        when(() => repository.closeDM(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const DMChannelFailure.unexpected()),
          ),
        );
        return closeDMCubit;
      },
      act: (cubit) => cubit.closeChannel(id),
      expect: () => [
        const CloseDMState.actionInProgress(),
        const CloseDMState.closeFailure(DMChannelFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.closeDM(id),
        ).called(1);
      },
    );
  });
}
