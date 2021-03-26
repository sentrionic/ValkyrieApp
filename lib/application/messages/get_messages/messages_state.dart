part of 'messages_cubit.dart';

@freezed
class MessagesState with _$MessagesState {
  const factory MessagesState.initial() = _Initial;
  const factory MessagesState.loadInProgress() = _LoadInProgress;
  const factory MessagesState.loadSuccess(
    List<Message> messages, {
    required bool hasMore,
  }) = _LoadSuccess;
  const factory MessagesState.loadFailure(MessageFailure messageFailure) =
      _LoadFailure;
}
