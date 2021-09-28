import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/messages/edit_message/edit_message_cubit.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';

import '../../fixtures/message_fixtures.dart';

class MockMessageRepository extends Mock implements IMessageRepository {}

void main() {
  late MockMessageRepository repository;
  late EditMessageCubit editMessageCubit;

  setUp(() {
    repository = MockMessageRepository();
    editMessageCubit = EditMessageCubit(repository);
  });

  group('TextChanged', () {
    final mockMessage = getMessageFixture();
    final text = mockMessage.text!.getOrCrash();

    blocTest<EditMessageCubit, EditMessageState>(
      'emits the new [MessageText]',
      build: () => editMessageCubit,
      act: (cubit) => cubit.messageTextChanged(text),
      expect: () => [
        EditMessageState.initial().copyWith(
          text: MessageText(text),
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SubmitEdit', () {
    final mockMessage = getMessageFixture();
    final text = mockMessage.text!.getOrCrash();

    test('initial EditMessageState should be EditMessageState.initial()', () {
      // assert
      expect(editMessageCubit.state, equals(EditMessageState.initial()));
    });

    blocTest<EditMessageCubit, EditMessageState>(
      'emits [initial] states for successful message creation',
      build: () {
        when(() => repository.editMessage(mockMessage.id, text)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        editMessageCubit.messageTextChanged(text);
        return editMessageCubit;
      },
      act: (cubit) => cubit.submitEdit(mockMessage.id),
      expect: () => [
        EditMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: true,
        ),
        EditMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.editMessage(mockMessage.id, text),
        ).called(1);
      },
    );

    blocTest<EditMessageCubit, EditMessageState>(
      'emits [initial] states for unsuccessful message creation',
      build: () {
        when(() => repository.editMessage(mockMessage.id, text)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MessageFailure.unexpected()),
          ),
        );
        editMessageCubit.messageTextChanged(text);
        return editMessageCubit;
      },
      act: (cubit) => cubit.submitEdit(mockMessage.id),
      expect: () => [
        EditMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: true,
        ),
        EditMessageState.initial().copyWith(
          text: MessageText(text),
          isSubmitting: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption:
              some(left(const MessageFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.editMessage(mockMessage.id, text),
        ).called(1);
      },
    );

    blocTest<EditMessageCubit, EditMessageState>(
      'emits [initial] states for invalid message text',
      build: () {
        editMessageCubit.messageTextChanged("");
        return editMessageCubit;
      },
      act: (cubit) => cubit.submitEdit(mockMessage.id),
      expect: () => [
        EditMessageState.initial().copyWith(
          text: MessageText(""),
          isSubmitting: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => repository.editMessage(mockMessage.id, text),
        );
      },
    );
  });
}
