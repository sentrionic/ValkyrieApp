import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

import '../../fixtures/channel_fixtures.dart';
import '../../fixtures/faker.dart';

class MockChannelRepository extends Mock implements IChannelRepository {}

void main() {
  late MockChannelRepository mockChannelRepository;
  late ChannelListCubit listCubit;

  setUp(() {
    mockChannelRepository = MockChannelRepository();
    listCubit = ChannelListCubit(mockChannelRepository);
  });

  void _setUpGetUserChannelsSuccess(List<Channel> list, String id) {
    when(() => mockChannelRepository.getGuildChannels(id)).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('ChannelList', () {
    final channelList = getChannelListFixture();
    final channelId = getRandomId();

    test('initial ChannelListState should be ChannelListState.initial()', () {
      // assert
      expect(listCubit.state, equals(const ChannelListState.initial()));
    });

    blocTest<ChannelListCubit, ChannelListState>(
      'emits [loadInProgress, loadSuccess] states for successful channel list fetch',
      build: () {
        _setUpGetUserChannelsSuccess(channelList, channelId);
        return listCubit;
      },
      act: (cubit) => cubit.getGuildChannels(channelId),
      expect: () => [
        const ChannelListState.loadInProgress(),
        ChannelListState.loadSuccess(channelList)
      ],
      verify: (_) {
        verify(() => mockChannelRepository.getGuildChannels(channelId))
            .called(1);
      },
    );

    blocTest<ChannelListCubit, ChannelListState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful channel list fetch',
      build: () {
        when(() => mockChannelRepository.getGuildChannels(channelId))
            .thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const ChannelFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getGuildChannels(channelId),
      expect: () => [
        const ChannelListState.loadInProgress(),
        const ChannelListState.loadFailure(ChannelFailure.unexpected())
      ],
      verify: (_) {
        verify(() => mockChannelRepository.getGuildChannels(channelId))
            .called(1);
      },
    );
  });

  group('GetCurrentChannel', () {
    final channelList = getChannelListFixture();
    final channelId = getRandomId();

    test('successfully returns the channel for the given channelId', () async {
      // arrange
      _setUpGetUserChannelsSuccess(channelList, channelId);
      await listCubit.getGuildChannels(channelId);

      // act
      final id = channelList[getRandomInt(0, channelList.length - 1)].id;
      final channel = listCubit.getCurrentChannel(id);

      // assert
      expect(channel, isNotNull);
      expect(channel?.id, id);
    });

    test('returns null if it cannot find the channel', () async {
      // arrange
      _setUpGetUserChannelsSuccess(channelList, channelId);
      await listCubit.getGuildChannels(channelId);

      // act
      final channel = listCubit.getCurrentChannel("-1");

      // assert
      expect(channel, isNull);
    });

    test('returns null if the state is not ChannelListState.loadSuccess()',
        () async {
      // arrange

      // act
      final channel = listCubit.getCurrentChannel("1");

      // assert
      expect(channel, isNull);
      expect(listCubit.state, equals(const ChannelListState.initial()));
    });
  });

  group('AddNewChannel', () {
    final channelList = getChannelListFixture();
    final mockChannel = getChannelFixture();

    blocTest<ChannelListCubit, ChannelListState>(
      'successfully adds the new channel',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserChannelsSuccess(channelList, "");
        await listCubit.getGuildChannels("");
        listCubit.addNewChannel(mockChannel);
      },
      expect: () => [
        const ChannelListState.loadInProgress(),
        ChannelListState.loadSuccess(channelList),
        ChannelListState.loadSuccess([...channelList, mockChannel]),
      ],
    );

    test('adds the new channel at the end of the list', () async {
      // arrange
      _setUpGetUserChannelsSuccess(channelList, "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.addNewChannel(mockChannel);

      // assert
      expect(
        listCubit.state,
        equals(ChannelListState.loadSuccess([...channelList, mockChannel])),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length + 1);
          expect(state.last, mockChannel);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not add the channel if the state is not ChannelListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addNewChannel(mockChannel);

      // assert
      expect(listCubit.state, equals(const ChannelListState.initial()));
    });
  });

  group('RemoveChannel', () {
    final channelList = getChannelListFixture();
    final mockChannel = getChannelFixture();

    blocTest<ChannelListCubit, ChannelListState>(
      'successfully removes the channel for the given channelId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
        await listCubit.getGuildChannels("");
        listCubit.removeChannel(mockChannel.id);
      },
      expect: () => [
        const ChannelListState.loadInProgress(),
        ChannelListState.loadSuccess([...channelList, mockChannel]),
        ChannelListState.loadSuccess(channelList),
      ],
    );

    test('removes the channel from the list', () async {
      // arrange
      _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.removeChannel(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(ChannelListState.loadSuccess(channelList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length);
          expect(state.where((g) => g.id == mockChannel.id).toList(), []);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not remove the channel if the state is not ChannelListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.removeChannel(mockChannel.id);

      // assert
      expect(listCubit.state, equals(const ChannelListState.initial()));
    });

    test('does not remove a channel if it cannot find a channel for the id',
        () async {
      // arrange
      _setUpGetUserChannelsSuccess(channelList, "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.removeChannel(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(ChannelListState.loadSuccess(channelList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('EditChannel', () {
    final channelList = getChannelListFixture();
    final mockChannel = getChannelFixture();
    final editedChannel =
        mockChannel.copyWith(name: ChannelName(getRandomName()));

    blocTest<ChannelListCubit, ChannelListState>(
      'successfully edits the channel for the given channel',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
        await listCubit.getGuildChannels("");
        listCubit.editChannel(editedChannel);
      },
      expect: () => [
        const ChannelListState.loadInProgress(),
        ChannelListState.loadSuccess([...channelList, mockChannel]),
        ChannelListState.loadSuccess([...channelList, editedChannel]),
      ],
    );

    test('successfully edits the channel', () async {
      // arrange
      _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.editChannel(editedChannel);

      // assert
      expect(
        listCubit.state,
        equals(ChannelListState.loadSuccess([...channelList, editedChannel])),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length + 1);
          expect(state.last, editedChannel);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not edit the channel if the state is not ChannelListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.editChannel(mockChannel);

      // assert
      expect(listCubit.state, equals(const ChannelListState.initial()));
    });

    test('does not edit a channel if it cannot find the channel', () async {
      // arrange
      _setUpGetUserChannelsSuccess(channelList, "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.editChannel(mockChannel);

      // assert
      expect(
        listCubit.state,
        equals(ChannelListState.loadSuccess(channelList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('AddNotification', () {
    final channelList = getChannelListFixture();
    final mockChannel = getChannelFixture();

    blocTest<ChannelListCubit, ChannelListState>(
      'successfully sets "hasNotification" to true for the given channelId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
        await listCubit.getGuildChannels("");
        listCubit.addNotification(mockChannel.id);
      },
      expect: () => [
        const ChannelListState.loadInProgress(),
        ChannelListState.loadSuccess([...channelList, mockChannel]),
        ChannelListState.loadSuccess(
          [...channelList, mockChannel.copyWith(hasNotification: true)],
        ),
      ],
    );

    test('successfully sets "hasNotification" to true', () async {
      // arrange
      _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.addNotification(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(
          ChannelListState.loadSuccess([
            ...channelList,
            mockChannel.copyWith(hasNotification: true),
          ]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length + 1);
          expect(state.last, mockChannel.copyWith(hasNotification: true));
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not change the notification of the channel if the state is not ChannelListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addNotification(mockChannel.id);

      // assert
      expect(listCubit.state, equals(const ChannelListState.initial()));
    });

    test(
        'does not change the notification of a channel if it cannot find the channel',
        () async {
      // arrange
      _setUpGetUserChannelsSuccess(channelList, "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.addNotification(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(ChannelListState.loadSuccess(channelList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('ClearNotification', () {
    final channelList = getChannelListFixture();
    final mockChannel = getChannelFixture().copyWith(hasNotification: true);

    blocTest<ChannelListCubit, ChannelListState>(
      'successfully sets "hasNotification" to false for the given channelId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
        await listCubit.getGuildChannels("");
        listCubit.clearNotification(mockChannel.id);
      },
      expect: () => [
        const ChannelListState.loadInProgress(),
        ChannelListState.loadSuccess([...channelList, mockChannel]),
        ChannelListState.loadSuccess(
          [...channelList, mockChannel.copyWith(hasNotification: false)],
        ),
      ],
    );

    test('successfully sets "hasNotification" to false', () async {
      // arrange
      _setUpGetUserChannelsSuccess([...channelList, mockChannel], "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.clearNotification(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(
          ChannelListState.loadSuccess([
            ...channelList,
            mockChannel.copyWith(hasNotification: false),
          ]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length + 1);
          expect(state.last, mockChannel.copyWith(hasNotification: false));
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not change the notification of the channel if the state is not ChannelListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.clearNotification(mockChannel.id);

      // assert
      expect(listCubit.state, equals(const ChannelListState.initial()));
    });

    test(
        'does not change the notification of a channel if it cannot find the channel',
        () async {
      // arrange
      _setUpGetUserChannelsSuccess(channelList, "");
      await listCubit.getGuildChannels("");

      // act
      listCubit.clearNotification(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(ChannelListState.loadSuccess(channelList)),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });
}
