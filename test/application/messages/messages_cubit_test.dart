import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/message_fixtures.dart';

class MockMessageRepository extends Mock implements IMessageRepository {}

void main() {
  late MockMessageRepository repository;

  setUp(() {
    repository = MockMessageRepository();
  });

  void _setUpGetChannelMessagesSuccess(List<Message> list, String channelId) {
    when(() => repository.getChannelMessages(channelId)).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 1),
        () => right(list),
      ),
    );
  }

  group('MessagesCubit', () {
    final channelId = getRandomId();
    final messageList = getMessageListFixture();

    test('initial MessagesState should be MessagesState.initial()', () {
      // assert
      expect(
        MessagesCubit(repository).state,
        equals(const MessagesState.initial()),
      );
    });

    blocTest<MessagesCubit, MessagesState>(
      'emits [loadInProgress, loadSuccess] states for successful message list fetch',
      build: () {
        _setUpGetChannelMessagesSuccess(messageList, channelId);
        return MessagesCubit(repository);
      },
      act: (cubit) => cubit.getChannelMessages(channelId),
      expect: () => [
        const MessagesState.loadInProgress(),
        MessagesState.loadSuccess(messageList, hasMore: false)
      ],
      verify: (_) {
        verify(() => repository.getChannelMessages(channelId)).called(1);
      },
    );

    blocTest<MessagesCubit, MessagesState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful message list fetch',
      build: () {
        when(() => repository.getChannelMessages(channelId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MessageFailure.unexpected()),
          ),
        );
        return MessagesCubit(repository);
      },
      act: (cubit) => cubit.getChannelMessages(channelId),
      expect: () => [
        const MessagesState.loadInProgress(),
        const MessagesState.loadFailure(MessageFailure.unexpected())
      ],
      verify: (_) {
        verify(() => repository.getChannelMessages(channelId)).called(1);
      },
    );
  });

  group('FetchMoreMessages', () {
    final channelId = getRandomId();
    final messageList = getBigMessageListFixture();
    final nextPageList = getMessageListFixture();

    test('initial MessagesState should be MessagesState.initial()', () {
      // assert
      expect(
        MessagesCubit(repository).state,
        equals(const MessagesState.initial()),
      );
    });

    blocTest<MessagesCubit, MessagesState>(
      'emits [] states for successful message list fetch',
      build: () {
        when(
          () => repository.getChannelMessages(
            channelId,
            messageList.last.createdAt,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(nextPageList),
          ),
        );
        return MessagesCubit(repository);
      },
      seed: () => MessagesState.loadSuccess(messageList, hasMore: true),
      act: (cubit) => cubit.fetchMoreMessages(channelId),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        MessagesState.loadSuccess(
          [...messageList, ...nextPageList],
          hasMore: false,
        ),
      ],
      verify: (_) {
        verify(
          () => repository.getChannelMessages(
            channelId,
            messageList.last.createdAt,
          ),
        ).called(1);
      },
    );

    blocTest<MessagesCubit, MessagesState>(
      'emits [] states for unsuccessful message list fetch',
      build: () {
        when(
          () => repository.getChannelMessages(
            channelId,
            messageList.last.createdAt,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MessageFailure.unexpected()),
          ),
        );
        return MessagesCubit(repository);
      },
      seed: () => MessagesState.loadSuccess(messageList, hasMore: true),
      act: (cubit) => cubit.fetchMoreMessages(channelId),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        const MessagesState.loadFailure(MessageFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.getChannelMessages(
            channelId,
            messageList.last.createdAt,
          ),
        ).called(1);
      },
    );

    blocTest<MessagesCubit, MessagesState>(
      'does not fetch if state is not MessagesState.success',
      build: () {
        return MessagesCubit(repository);
      },
      act: (cubit) => cubit.fetchMoreMessages(channelId),
      expect: () => [],
      verify: (_) {
        verifyNever(
          () => repository.getChannelMessages(
            channelId,
            messageList.last.createdAt,
          ),
        );
      },
    );

    blocTest<MessagesCubit, MessagesState>(
      'does not fetch if hasMore is false',
      build: () {
        return MessagesCubit(repository);
      },
      seed: () => MessagesState.loadSuccess(messageList, hasMore: false),
      act: (cubit) => cubit.fetchMoreMessages(channelId),
      expect: () => [],
      verify: (_) {
        verifyNever(
          () => repository.getChannelMessages(
            channelId,
            messageList.last.createdAt,
          ),
        );
      },
    );
  });

  group('AddNewMessage', () {
    final channelId = getRandomId();
    final messageList = getMessageListFixture();
    final mockMessage = getMessageFixture();

    blocTest<MessagesCubit, MessagesState>(
      'successfully adds the new message',
      build: () => MessagesCubit(repository),
      act: (cubit) async {
        _setUpGetChannelMessagesSuccess(messageList, channelId);
        await cubit.getChannelMessages(channelId);
        cubit.addNewMessage(mockMessage);
      },
      expect: () => [
        const MessagesState.loadInProgress(),
        MessagesState.loadSuccess(messageList, hasMore: false),
        MessagesState.loadSuccess(
          [mockMessage, ...messageList],
          hasMore: false,
        ),
      ],
    );

    test('adds the new message at the beginning of the list', () async {
      // arrange
      final cubit = MessagesCubit(repository);
      _setUpGetChannelMessagesSuccess(messageList, channelId);
      await cubit.getChannelMessages(channelId);

      // act
      cubit.addNewMessage(mockMessage);

      // assert
      expect(
        cubit.state,
        equals(
          MessagesState.loadSuccess(
            [mockMessage, ...messageList],
            hasMore: false,
          ),
        ),
      );

      cubit.state.maybeWhen(
        loadSuccess: (messages, hasMore) {
          expect(messages.length, messageList.length + 1);
          expect(messages.first, mockMessage);
          expect(hasMore, false);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not add the message if the state is not MessagesState.loadSuccess()',
        () async {
      // arrange
      final cubit = MessagesCubit(repository);

      // act
      cubit.addNewMessage(mockMessage);

      // assert
      expect(cubit.state, equals(const MessagesState.initial()));
    });
  });

  group('DeleteMessage', () {
    final channelId = getRandomId();
    final messageList = getMessageListFixture();
    final mockMessage = getMessageFixture();

    blocTest<MessagesCubit, MessagesState>(
      'successfully removes the message for the given messageId',
      build: () => MessagesCubit(repository),
      act: (cubit) async {
        _setUpGetChannelMessagesSuccess(
          [...messageList, mockMessage],
          channelId,
        );
        await cubit.getChannelMessages(channelId);
        cubit.deleteMessage(mockMessage.id);
      },
      expect: () => [
        const MessagesState.loadInProgress(),
        MessagesState.loadSuccess(
          [...messageList, mockMessage],
          hasMore: false,
        ),
        MessagesState.loadSuccess(messageList, hasMore: false),
      ],
    );

    test('removes the message from the list', () async {
      // arrange
      final cubit = MessagesCubit(repository);
      _setUpGetChannelMessagesSuccess([...messageList, mockMessage], channelId);
      await cubit.getChannelMessages(channelId);

      // act
      cubit.deleteMessage(mockMessage.id);

      // assert
      expect(
        cubit.state,
        equals(MessagesState.loadSuccess(messageList, hasMore: false)),
      );

      cubit.state.maybeWhen(
        loadSuccess: (messages, hasMore) {
          expect(messages.length, messageList.length);
          expect(messages.where((g) => g.id == mockMessage.id).toList(), []);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not remove the message if the state is not MessagesState.loadSuccess()',
        () async {
      // arrange
      final cubit = MessagesCubit(repository);

      // act
      cubit.deleteMessage(mockMessage.id);

      // assert
      expect(cubit.state, equals(const MessagesState.initial()));
    });

    test('does not remove a message if it cannot find a message for the id',
        () async {
      // arrange
      final cubit = MessagesCubit(repository);
      _setUpGetChannelMessagesSuccess(messageList, channelId);
      await cubit.getChannelMessages(channelId);

      // act
      cubit.deleteMessage(mockMessage.id);

      // assert
      expect(
        cubit.state,
        equals(MessagesState.loadSuccess(messageList, hasMore: false)),
      );

      cubit.state.maybeWhen(
        loadSuccess: (messages, hasMore) {
          expect(messages.length, messageList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });

  group('UpdateMessage', () {
    final channelId = getRandomId();
    final messageList = getMessageListFixture();
    final mockMessage = getMessageFixture();
    final editedMessage =
        mockMessage.copyWith(text: MessageText(getRandomName()));

    blocTest<MessagesCubit, MessagesState>(
      'successfully edits the message for the given message',
      build: () => MessagesCubit(repository),
      act: (cubit) async {
        _setUpGetChannelMessagesSuccess(
          [...messageList, mockMessage],
          channelId,
        );
        await cubit.getChannelMessages(channelId);
        cubit.updateMessage(editedMessage);
      },
      expect: () => [
        const MessagesState.loadInProgress(),
        MessagesState.loadSuccess(
          [...messageList, mockMessage],
          hasMore: false,
        ),
        MessagesState.loadSuccess(
          [...messageList, editedMessage],
          hasMore: false,
        ),
      ],
    );

    test('successfully edits the message', () async {
      // arrange
      final cubit = MessagesCubit(repository);
      _setUpGetChannelMessagesSuccess(
        [...messageList, mockMessage],
        channelId,
      );
      await cubit.getChannelMessages(channelId);

      // act
      cubit.updateMessage(editedMessage);

      // assert
      expect(
        cubit.state,
        equals(
          MessagesState.loadSuccess(
            [...messageList, editedMessage],
            hasMore: false,
          ),
        ),
      );

      cubit.state.maybeWhen(
        loadSuccess: (messages, hasMore) {
          expect(messages.length, messageList.length + 1);
          expect(messages.last, editedMessage);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });

    test(
        'does not edit the message if the state is not MessagesState.loadSuccess()',
        () async {
      // arrange
      final cubit = MessagesCubit(repository);

      // act
      cubit.updateMessage(mockMessage);

      // assert
      expect(cubit.state, equals(const MessagesState.initial()));
    });

    test('does not edit a message if it cannot find the message', () async {
      // arrange
      final cubit = MessagesCubit(repository);
      _setUpGetChannelMessagesSuccess(messageList, channelId);
      await cubit.getChannelMessages(channelId);

      // act
      cubit.updateMessage(mockMessage);

      // assert
      expect(
        cubit.state,
        equals(MessagesState.loadSuccess(messageList, hasMore: false)),
      );

      cubit.state.maybeWhen(
        loadSuccess: (messages, hasMore) {
          expect(messages.length, messageList.length);
        },
        // Wrong state so throw error
        orElse: () => expect(true, false),
      );
    });
  });
}
