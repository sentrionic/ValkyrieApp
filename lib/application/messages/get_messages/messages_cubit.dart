import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';

part 'messages_state.dart';
part 'messages_cubit.freezed.dart';

@injectable
class MessagesCubit extends Cubit<MessagesState> {
  final IMessageRepository _repository;
  bool isSubmiting = false;

  MessagesCubit(this._repository) : super(const MessagesState.initial());

  Future<void> getChannelMessages(String channelId) async {
    emit(const MessagesState.loadInProgress());
    final failureOrMessages = await _repository.getChannelMessages(channelId);
    emit(
      failureOrMessages.fold(
        (f) => MessagesState.loadFailure(f),
        (messages) => MessagesState.loadSuccess(
          messages,
          hasMore: messages.length == 35,
        ),
      ),
    );
  }

  Future<void> fetchMoreMessages(String channelId) async {
    state.maybeWhen(
      loadSuccess: (messages, hasMore) async {
        if (!isSubmiting && hasMore) {
          isSubmiting = true;
          final cursor = messages.last.createdAt;
          final failureOrMessages =
              await _repository.getChannelMessages(channelId, cursor);
          isSubmiting = false;
          emit(
            failureOrMessages.fold(
              (f) => MessagesState.loadFailure(f),
              (newMessages) => MessagesState.loadSuccess(
                messages + newMessages,
                hasMore: newMessages.length == 35,
              ),
            ),
          );
        }
      },
      orElse: () {},
    );
  }
}
