import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/channels/delete_channel/delete_channel_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

import '../../fixtures/faker.dart';

class MockChannelRepository extends Mock implements IChannelRepository {}

void main() {
  late MockChannelRepository mockChannelRepository;
  late DeleteChannelCubit deleteChannelCubit;

  setUp(() {
    mockChannelRepository = MockChannelRepository();
    deleteChannelCubit = DeleteChannelCubit(mockChannelRepository);
  });

  group('DeleteChannel', () {
    final id = getRandomId();

    test('initial ChannelDeleteState should be ChannelDeleteState.initial()',
        () {
      // assert
      expect(
        deleteChannelCubit.state,
        equals(const DeleteChannelState.initial()),
      );
    });

    blocTest<DeleteChannelCubit, DeleteChannelState>(
      'emits [actionInProgress, deleteSuccess] states for successful channel deletion',
      build: () {
        when(() => mockChannelRepository.deleteChannel(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return deleteChannelCubit;
      },
      act: (cubit) => cubit.deleteChannel(id),
      expect: () => [
        const DeleteChannelState.actionInProgress(),
        const DeleteChannelState.deleteSuccess(),
      ],
      verify: (_) {
        verify(
          () => mockChannelRepository.deleteChannel(id),
        ).called(1);
      },
    );

    blocTest<DeleteChannelCubit, DeleteChannelState>(
      'emits [actionInProgress, deleteFailure] states for unsuccessful channel deletion',
      build: () {
        when(() => mockChannelRepository.deleteChannel(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const ChannelFailure.unexpected()),
          ),
        );
        return deleteChannelCubit;
      },
      act: (cubit) => cubit.deleteChannel(id),
      expect: () => [
        const DeleteChannelState.actionInProgress(),
        const DeleteChannelState.deleteFailure(ChannelFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => mockChannelRepository.deleteChannel(id),
        ).called(1);
      },
    );
  });
}
