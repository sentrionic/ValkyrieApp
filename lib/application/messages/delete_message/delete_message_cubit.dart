import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';

part 'delete_message_state.dart';
part 'delete_message_cubit.freezed.dart';

/// DeleteMessageCubit handles the deletion of a [Message]
@injectable
class DeleteMessageCubit extends Cubit<DeleteMessageState> {
  final IMessageRepository _repository;
  DeleteMessageCubit(this._repository)
      : super(const DeleteMessageState.initial());

  /// Deletes the given message.
  /// Emits [unit] if successful, [MessageFailure] otherwise.
  Future<void> deleteMessage(String id) async {
    emit(const DeleteMessageState.actionInProgress());
    final possibleFailure = await _repository.deleteMessage(id);
    emit(
      possibleFailure.fold(
        (f) => DeleteMessageState.deleteFailure(f),
        (_) => const DeleteMessageState.deleteSuccess(),
      ),
    );
  }
}
