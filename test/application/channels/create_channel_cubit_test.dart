import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/channels/create_channel/create_channel_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

import '../../fixtures/channel_fixtures.dart';
import '../../fixtures/faker.dart';
import '../../fixtures/user_fixtures.dart';

class MockChannelRepository extends Mock implements IChannelRepository {}

void main() {
  late MockChannelRepository mockChannelRepository;
  late CreateChannelCubit createChannelCubit;

  setUp(() {
    mockChannelRepository = MockChannelRepository();
    createChannelCubit = CreateChannelCubit(mockChannelRepository);
  });

  group('NameChanged', () {
    final mockChannel = getChannelFixture();
    final name = mockChannel.name.getOrCrash();

    blocTest<CreateChannelCubit, CreateChannelState>(
      'emits the new [ChannelName]',
      build: () => createChannelCubit,
      act: (cubit) => cubit.nameChanged(name),
      expect: () => [
        CreateChannelState.initial().copyWith(
          name: ChannelName(name),
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('IsPublicChanged', () {
    blocTest<CreateChannelCubit, CreateChannelState>(
      'emits the new [ChannelName]',
      build: () => createChannelCubit,
      act: (cubit) => cubit.isPublicChanged(isPublic: true),
      expect: () => [
        CreateChannelState.initial().copyWith(
          isPublic: true,
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('AddMember', () {
    final mockMember = getMemberFixture();

    blocTest<CreateChannelCubit, CreateChannelState>(
      'emits the new [Member] list',
      build: () => createChannelCubit,
      act: (cubit) => cubit.addMember(mockMember),
      expect: () => [
        CreateChannelState.initial().copyWith(
          members: [mockMember],
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('RemoveMember', () {
    final mockMember = getMemberFixture();

    blocTest<CreateChannelCubit, CreateChannelState>(
      'emits the new [Member] list',
      build: () {
        createChannelCubit.addMember(mockMember);
        return createChannelCubit;
      },
      act: (cubit) => cubit.removeMember(mockMember.id),
      expect: () => [
        CreateChannelState.initial().copyWith(
          members: [],
          channelFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('CreateChannel', () {
    final guildId = getRandomId();
    final mockChannel = getChannelFixture();
    final name = mockChannel.name.getOrCrash();

    test('initial CreateChannelState should be CreateChannelState.initial()',
        () {
      // assert
      expect(createChannelCubit.state, equals(CreateChannelState.initial()));
    });

    blocTest<CreateChannelCubit, CreateChannelState>(
      'emits [initial] states for successful channel creation',
      build: () {
        when(() => mockChannelRepository.createChannel(guildId, name))
            .thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(mockChannel),
          ),
        );
        createChannelCubit.nameChanged(name);
        return createChannelCubit;
      },
      act: (cubit) => cubit.createChannel(guildId),
      expect: () => [
        CreateChannelState.initial().copyWith(
          name: ChannelName(name),
          isSubmitting: true,
        ),
        CreateChannelState.initial().copyWith(
          name: ChannelName(name),
          isSubmitting: false,
          showErrorMessages: true,
          channelFailureOrSuccessOption: some(right(mockChannel)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockChannelRepository.createChannel(guildId, name),
        ).called(1);
      },
    );

    blocTest<CreateChannelCubit, CreateChannelState>(
      'emits [initial] states for unsuccessful channel creation',
      build: () {
        when(() => mockChannelRepository.createChannel(guildId, name))
            .thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const ChannelFailure.unexpected()),
          ),
        );
        createChannelCubit.nameChanged(name);
        return createChannelCubit;
      },
      act: (cubit) => cubit.createChannel(guildId),
      expect: () => [
        CreateChannelState.initial().copyWith(
          name: ChannelName(name),
          isSubmitting: true,
        ),
        CreateChannelState.initial().copyWith(
          name: ChannelName(name),
          isSubmitting: false,
          showErrorMessages: true,
          channelFailureOrSuccessOption:
              some(left(const ChannelFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockChannelRepository.createChannel(guildId, name),
        ).called(1);
      },
    );

    blocTest<CreateChannelCubit, CreateChannelState>(
      'emits [initial] states for invalid channel name',
      build: () {
        createChannelCubit.nameChanged("");
        return createChannelCubit;
      },
      act: (cubit) => cubit.createChannel(guildId),
      expect: () => [
        CreateChannelState.initial().copyWith(
          name: ChannelName(""),
          isSubmitting: false,
          showErrorMessages: true,
          channelFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockChannelRepository.createChannel(guildId, name),
        );
      },
    );
  });
}
