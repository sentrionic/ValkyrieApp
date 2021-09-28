import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/message_fixtures.dart';

class MockMessageRepository extends Mock implements IMessageRepository {}

void main() {
  late MockMessageRepository repository;
  late CreateMessageCubit createMessageCubit;

  setUp(() {
    repository = MockMessageRepository();
    createMessageCubit = CreateMessageCubit(repository);
  });

  group('TextChanged', () {
    final mockMessage = getMessageFixture();
    final text = mockMessage.text!.getOrCrash();

    blocTest<CreateMessageCubit, CreateMessageState>(
      'emits the new [MessageText]',
      build: () => createMessageCubit,
      act: (cubit) => cubit.messageTextChanged(text),
      expect: () => [
        CreateMessageState.initial().copyWith(
          text: MessageText(text),
          messageFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('ResetMessageText', () {
    final mockMessage = getMessageFixture();
    final text = mockMessage.text!.getOrCrash();

    blocTest<CreateMessageCubit, CreateMessageState>(
      'emits the new [MessageText]',
      build: () => createMessageCubit..messageTextChanged(text),
      act: (cubit) => cubit.resetMessageText(),
      expect: () => [
        CreateMessageState.initial().copyWith(
          text: MessageText(""),
          messageFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('CreateMessage', () {
    final channelId = getRandomId();
    final mockMessage = getMessageFixture();
    final text = mockMessage.text!.getOrCrash();

    test('initial CreateMessageState should be CreateMessageState.initial()',
        () {
      // assert
      expect(createMessageCubit.state, equals(CreateMessageState.initial()));
    });

    blocTest<CreateMessageCubit, CreateMessageState>(
      'emits [initial] states for successful message creation',
      build: () {
        when(() => repository.createMessage(channelId, text)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        createMessageCubit.messageTextChanged(text);
        return createMessageCubit;
      },
      act: (cubit) => cubit.createMessage(channelId),
      expect: () => [
        CreateMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: true,
        ),
        CreateMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: false,
          showErrorMessages: true,
          messageFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.createMessage(channelId, text),
        ).called(1);
      },
    );

    blocTest<CreateMessageCubit, CreateMessageState>(
      'emits [initial] states for unsuccessful message creation',
      build: () {
        when(() => repository.createMessage(channelId, text)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MessageFailure.unexpected()),
          ),
        );
        createMessageCubit.messageTextChanged(text);
        return createMessageCubit;
      },
      act: (cubit) => cubit.createMessage(channelId),
      expect: () => [
        CreateMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: true,
        ),
        CreateMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: false,
          showErrorMessages: true,
          messageFailureOrSuccessOption:
              some(left(const MessageFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.createMessage(channelId, text),
        ).called(1);
      },
    );

    blocTest<CreateMessageCubit, CreateMessageState>(
      'emits [initial] states for invalid message text',
      build: () {
        createMessageCubit.messageTextChanged("");
        return createMessageCubit;
      },
      act: (cubit) => cubit.createMessage(channelId),
      expect: () => [
        CreateMessageState.initial().copyWith(
          text: MessageText(""),
          isSubmitting: false,
          showErrorMessages: true,
          messageFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => repository.createMessage(channelId, text),
        );
      },
    );
  });
}
