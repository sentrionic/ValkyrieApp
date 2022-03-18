import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';

part 'create_message_state.dart';
part 'create_message_cubit.freezed.dart';

/// CreateMessageCubit manages the creation of a [Message]
@injectable
class CreateMessageCubit extends Cubit<CreateMessageState> {
  final IMessageRepository _repository;
  CreateMessageCubit(this._repository) : super(CreateMessageState.initial());

  /// Changes the value of the [MessageText] in the [CreateMessageState]
  /// and resets the error.
  Future<void> messageTextChanged(String text) async {
    emit(
      state.copyWith(
        text: MessageText(text),
        messageFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Resets the value of the [MessageText] in the [CreateMessageState]
  /// and the error.
  Future<void> resetMessageText() async {
    emit(
      state.copyWith(
        text: MessageText(''),
        messageFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Submits the request to the network if the text is not empty.
  /// Emits [unit] if the request was successful, [MessageFailure] otherwise.
  Future<void> createMessage(String channelId) async {
    Either<MessageFailure, Unit>? failureOrSuccess;

    final isMessageValid = state.text.isValid();

    if (isMessageValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          messageFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess =
          await _repository.createMessage(channelId, state.text.getOrCrash());
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        messageFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
