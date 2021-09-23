part of 'delete_message_cubit.dart';

@freezed
class DeleteMessageState with _$DeleteMessageState {
  const factory DeleteMessageState.initial() = _Initial;
  const factory DeleteMessageState.actionInProgress() = _ActionInProgress;
  const factory DeleteMessageState.deleteFailure(
    MessageFailure messageFailure,
  ) = _DeleteFailure;
  const factory DeleteMessageState.deleteSuccess() = _DeleteSuccess;
}
