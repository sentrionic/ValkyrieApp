import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/messages/delete_message/delete_message_cubit.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';

import '../../fixtures/faker.dart';

class MockMessageRepository extends Mock implements IMessageRepository {}

void main() {
  late MockMessageRepository mockMessageRepository;
  late DeleteMessageCubit deleteMessageCubit;

  setUp(() {
    mockMessageRepository = MockMessageRepository();
    deleteMessageCubit = DeleteMessageCubit(mockMessageRepository);
  });

  group('DeleteMessage', () {
    final id = getRandomId();

    test('initial MessageDeleteState should be MessageDeleteState.initial()',
        () {
      // assert
      expect(
        deleteMessageCubit.state,
        equals(const DeleteMessageState.initial()),
      );
    });

    blocTest<DeleteMessageCubit, DeleteMessageState>(
      'emits [actionInProgress, deleteSuccess] states for successful message deletion',
      build: () {
        when(() => mockMessageRepository.deleteMessage(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return deleteMessageCubit;
      },
      act: (cubit) => cubit.deleteMessage(id),
      expect: () => [
        const DeleteMessageState.actionInProgress(),
        const DeleteMessageState.deleteSuccess(),
      ],
      verify: (_) {
        verify(
          () => mockMessageRepository.deleteMessage(id),
        ).called(1);
      },
    );

    blocTest<DeleteMessageCubit, DeleteMessageState>(
      'emits [actionInProgress, deleteFailure] states for unsuccessful message deletion',
      build: () {
        when(() => mockMessageRepository.deleteMessage(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MessageFailure.unexpected()),
          ),
        );
        return deleteMessageCubit;
      },
      act: (cubit) => cubit.deleteMessage(id),
      expect: () => [
        const DeleteMessageState.actionInProgress(),
        const DeleteMessageState.deleteFailure(MessageFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => mockMessageRepository.deleteMessage(id),
        ).called(1);
      },
    );
  });
}
