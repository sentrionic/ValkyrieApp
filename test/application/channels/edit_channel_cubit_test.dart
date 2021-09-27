import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/channels/edit_channel/edit_channel_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

import '../../fixtures/channel_fixtures.dart';
import '../../fixtures/faker.dart';
import '../../fixtures/user_fixtures.dart';

class MockChannelRepository extends Mock implements IChannelRepository {}

void main() {
  late MockChannelRepository mockChannelRepository;
  late EditChannelCubit editChannelCubit;

  setUp(() {
    mockChannelRepository = MockChannelRepository();
    editChannelCubit = EditChannelCubit(mockChannelRepository);
  });

  group('Initialize', () {
    final mockChannel = getChannelFixture();
    final name = mockChannel.name.getOrCrash();

    blocTest<EditChannelCubit, EditChannelState>(
      'emits the current [ChannelName, isPublic, members]',
      build: () => editChannelCubit,
      act: (cubit) => cubit.initialize(mockChannel),
      expect: () => [
        EditChannelState.initial().copyWith(
          name: ChannelName(name),
          isPublic: mockChannel.isPublic,
          members: [],
        ),
      ],
    );
  });

  group('NameChanged', () {
    final newName = getRandomName();

    blocTest<EditChannelCubit, EditChannelState>(
      'emits the new [ChannelName]',
      build: () => editChannelCubit,
      act: (cubit) => cubit.nameChanged(newName),
      expect: () => [
        EditChannelState.initial().copyWith(
          name: ChannelName(newName),
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('IsPublicChanged', () {
    blocTest<EditChannelCubit, EditChannelState>(
      'emits the new [isPublic] value',
      build: () => editChannelCubit,
      act: (cubit) => cubit.isPublicChanged(isPublic: true),
      expect: () => [
        EditChannelState.initial().copyWith(
          isPublic: true,
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('AddMember', () {
    final mockMember = getMemberFixture();

    blocTest<EditChannelCubit, EditChannelState>(
      'emits the new [Member] list',
      build: () => editChannelCubit,
      act: (cubit) => cubit.addMember(mockMember),
      expect: () => [
        EditChannelState.initial().copyWith(
          members: [mockMember],
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('RemoveMember', () {
    final mockMember = getMemberFixture();

    blocTest<EditChannelCubit, EditChannelState>(
      'emits the new [Member] list',
      build: () {
        editChannelCubit.addMember(mockMember);
        return editChannelCubit;
      },
      act: (cubit) => cubit.removeMember(mockMember.id),
      expect: () => [
        EditChannelState.initial().copyWith(
          members: [],
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SubmitEditChannel', () {
    final mockChannel = getChannelFixture();
    final newName = getRandomName();

    test('initial EditChannelState should be EditChannelState.initial()', () {
      // assert
      expect(editChannelCubit.state, equals(EditChannelState.initial()));
    });

    blocTest<EditChannelCubit, EditChannelState>(
      'emits [initial] state for successful channel edit',
      build: () {
        when(
          () => mockChannelRepository.editChannel(
            mockChannel.id,
            newName,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        editChannelCubit.initialize(mockChannel);
        editChannelCubit.nameChanged(newName);
        return editChannelCubit;
      },
      act: (cubit) => cubit.submitEditChannel(mockChannel.id),
      expect: () => [
        EditChannelState.initial().copyWith(
          name: ChannelName(newName),
          isSubmitting: true,
        ),
        EditChannelState.initial().copyWith(
          name: ChannelName(newName),
          isSubmitting: false,
          showErrorMessages: true,
          channelFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockChannelRepository.editChannel(
            mockChannel.id,
            newName,
          ),
        ).called(1);
      },
    );

    blocTest<EditChannelCubit, EditChannelState>(
      'emits [initial] state for unsuccessful channel edit',
      build: () {
        when(
          () => mockChannelRepository.editChannel(
            mockChannel.id,
            newName,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const ChannelFailure.unexpected()),
          ),
        );
        editChannelCubit.initialize(mockChannel);
        editChannelCubit.nameChanged(newName);
        return editChannelCubit;
      },
      act: (cubit) => cubit.submitEditChannel(mockChannel.id),
      expect: () => [
        EditChannelState.initial().copyWith(
          name: ChannelName(newName),
          isSubmitting: true,
        ),
        EditChannelState.initial().copyWith(
          name: ChannelName(newName),
          isSubmitting: false,
          showErrorMessages: true,
          channelFailureOrSuccessOption:
              some(left(const ChannelFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockChannelRepository.editChannel(
            mockChannel.id,
            newName,
          ),
        ).called(1);
      },
    );

    blocTest<EditChannelCubit, EditChannelState>(
      'emits [initial] state for invalid channel name',
      build: () {
        editChannelCubit.initialize(mockChannel);
        editChannelCubit.nameChanged("");
        return editChannelCubit;
      },
      act: (cubit) => cubit.submitEditChannel(mockChannel.id),
      expect: () => [
        EditChannelState.initial().copyWith(
          name: ChannelName(""),
          isSubmitting: false,
          showErrorMessages: true,
          channelFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockChannelRepository.editChannel(mockChannel.id, ""),
        );
      },
    );
  });
}
