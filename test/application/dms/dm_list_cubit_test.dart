import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

import '../../fixtures/channel_fixtures.dart';
import '../../fixtures/faker.dart';

class MockDMRepository extends Mock implements IDMRepository {}

void main() {
  late MockDMRepository repository;
  late DMListCubit listCubit;

  setUp(() {
    repository = MockDMRepository();
    listCubit = DMListCubit(repository);
  });

  void _setUpGetUserDMsSuccess(List<DMChannel> list) {
    when(() => repository.getUserDMs()).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('DMList', () {
    final channelList = getDMListFixture();

    test('initial DMListState should be DMListState.initial()', () {
      // assert
      expect(listCubit.state, equals(const DMListState.initial()));
    });

    blocTest<DMListCubit, DMListState>(
      'emits [loadInProgress, loadSuccess] states for successful dm list fetch',
      build: () {
        _setUpGetUserDMsSuccess(channelList);
        return listCubit;
      },
      act: (cubit) => cubit.getUserDMs(),
      expect: () => [
        const DMListState.loadInProgress(),
        DMListState.loadSuccess(channelList)
      ],
      verify: (_) {
        verify(() => repository.getUserDMs()).called(1);
      },
    );

    blocTest<DMListCubit, DMListState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful dm list fetch',
      build: () {
        when(() => repository.getUserDMs()).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const DMChannelFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getUserDMs(),
      expect: () => [
        const DMListState.loadInProgress(),
        const DMListState.loadFailure(DMChannelFailure.unexpected())
      ],
      verify: (_) {
        verify(() => repository.getUserDMs()).called(1);
      },
    );
  });

  group('GetCurrentDM', () {
    final channelList = getDMListFixture();

    test('successfully returns the dm for the given channelId', () async {
      // arrange
      _setUpGetUserDMsSuccess(channelList);
      await listCubit.getUserDMs();

      // act
      final id = channelList[getRandomInt(0, channelList.length - 1)].id;
      final channel = listCubit.getCurrentDM(id);

      // assert
      expect(channel, isNotNull);
      expect(channel?.id, id);
    });

    test('returns null if it cannot find the dm', () async {
      // arrange
      _setUpGetUserDMsSuccess(channelList);
      await listCubit.getUserDMs();

      // act
      final channel = listCubit.getCurrentDM("-1");

      // assert
      expect(channel, isNull);
    });

    test('returns null if the state is not DMListState.loadSuccess()',
        () async {
      // arrange

      // act
      final channel = listCubit.getCurrentDM("1");

      // assert
      expect(channel, isNull);
      expect(listCubit.state, equals(const DMListState.initial()));
    });
  });

  group('AddNewDM', () {
    final channelList = getDMListFixture();
    final mockChannel = getDMFixture();

    blocTest<DMListCubit, DMListState>(
      'successfully adds the new dm',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserDMsSuccess(channelList);
        await listCubit.getUserDMs();
        listCubit.addNewDM(mockChannel);
      },
      expect: () => [
        const DMListState.loadInProgress(),
        DMListState.loadSuccess(channelList),
        DMListState.loadSuccess([mockChannel, ...channelList]),
      ],
    );

    test('adds the new dm at the beginning of the list', () async {
      // arrange
      _setUpGetUserDMsSuccess(channelList);
      await listCubit.getUserDMs();

      // act
      listCubit.addNewDM(mockChannel);

      // assert
      expect(
        listCubit.state,
        equals(DMListState.loadSuccess([mockChannel, ...channelList])),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length + 1);
          expect(state.first, mockChannel);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test('moves the dm to the beginning of the list if it already exists',
        () async {
      // arrange
      _setUpGetUserDMsSuccess([...channelList, mockChannel]);
      await listCubit.getUserDMs();

      // act
      listCubit.addNewDM(mockChannel);

      // assert
      expect(
        listCubit.state,
        equals(DMListState.loadSuccess([mockChannel, ...channelList])),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length + 1);
          expect(state.first, mockChannel);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test('does not add the dm if the state is not DMListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.addNewDM(mockChannel);

      // assert
      expect(listCubit.state, equals(const DMListState.initial()));
    });
  });

  group('RemoveDM', () {
    final channelList = getDMListFixture();
    final mockChannel = getDMFixture();

    blocTest<DMListCubit, DMListState>(
      'successfully removes the dm for the given channelId',
      build: () {
        return listCubit;
      },
      act: (cubit) async {
        _setUpGetUserDMsSuccess([...channelList, mockChannel]);
        await listCubit.getUserDMs();
        listCubit.removeDM(mockChannel.id);
      },
      expect: () => [
        const DMListState.loadInProgress(),
        DMListState.loadSuccess([...channelList, mockChannel]),
        DMListState.loadSuccess(channelList),
      ],
    );

    test('removes the dm from the list', () async {
      // arrange
      _setUpGetUserDMsSuccess([...channelList, mockChannel]);
      await listCubit.getUserDMs();

      // act
      listCubit.removeDM(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(DMListState.loadSuccess(channelList)),
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
        'does not remove the channel if the state is not DMListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.removeDM(mockChannel.id);

      // assert
      expect(listCubit.state, equals(const DMListState.initial()));
    });

    test('does not remove a channel if it cannot find a channel for the id',
        () async {
      // arrange
      _setUpGetUserDMsSuccess(channelList);
      await listCubit.getUserDMs();

      // act
      listCubit.removeDM(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(DMListState.loadSuccess(channelList)),
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

  group('PushToTop', () {
    final channelList = getDMListFixture();
    final mockChannel = getDMFixture();

    blocTest<DMListCubit, DMListState>(
      'successfully pushes the dm to the top for the given channelId',
      build: () => listCubit,
      act: (cubit) async {
        _setUpGetUserDMsSuccess([...channelList, mockChannel]);
        await listCubit.getUserDMs();
        listCubit.pushToTop(mockChannel.id);
      },
      expect: () => [
        const DMListState.loadInProgress(),
        DMListState.loadSuccess([...channelList, mockChannel]),
        DMListState.loadSuccess(
          [mockChannel, ...channelList],
        ),
      ],
    );

    test('successfully sets pushes the right channel to the top', () async {
      // arrange
      _setUpGetUserDMsSuccess([...channelList, mockChannel]);
      await listCubit.getUserDMs();

      // act
      listCubit.pushToTop(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(
          DMListState.loadSuccess([
            mockChannel,
            ...channelList,
          ]),
        ),
      );

      listCubit.state.maybeWhen(
        loadSuccess: (state) {
          expect(state.length, channelList.length + 1);
          expect(state.first, mockChannel);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not change the position of a channel if the state is not DMListState.loadSuccess()',
        () async {
      // arrange

      // act
      listCubit.pushToTop(mockChannel.id);

      // assert
      expect(listCubit.state, equals(const DMListState.initial()));
    });

    test(
        'does not change the position of a channel if it cannot find the channel',
        () async {
      // arrange
      _setUpGetUserDMsSuccess(channelList);
      await listCubit.getUserDMs();

      // act
      listCubit.pushToTop(mockChannel.id);

      // assert
      expect(
        listCubit.state,
        equals(DMListState.loadSuccess(channelList)),
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
