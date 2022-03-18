import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';

part 'edit_message_state.dart';
part 'edit_message_cubit.freezed.dart';

/// EditMessageCubit manages the editing of text messages.
@injectable
class EditMessageCubit extends Cubit<EditMessageState> {
  final IMessageRepository _repository;
  EditMessageCubit(this._repository) : super(EditMessageState.initial());

  /// Changes the value of the [MessageText] in the [CreateMessageState]
  /// and resets the error.
  Future<void> messageTextChanged(String text) async {
    emit(
      state.copyWith(
        text: MessageText(text),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Submits the request to the network if the text is not empty.
  /// Emits [unit] if the request was successful, [MessageFailure] otherwise.
  Future<void> submitEdit(String messageId) async {
    Either<MessageFailure, Unit>? failureOrSuccess;

    final isMessageValid = state.text.isValid();

    if (isMessageValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          saveFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess =
          await _repository.editMessage(messageId, state.text.getOrCrash());
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
