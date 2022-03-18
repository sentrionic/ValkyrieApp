import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';

part 'messages_state.dart';
part 'messages_cubit.freezed.dart';

/// MessagesCubit manages everything related to the fetched messages.
@injectable
class MessagesCubit extends Cubit<MessagesState> {
  final IMessageRepository _repository;
  bool isSubmiting = false;

  // Maximum number of messages fetched per request
  final fetchedMessageSize = 35;

  MessagesCubit(this._repository) : super(const MessagesState.initial());

  /// Fetches the first page of messages for the given channel.
  /// Emits a list of [Message] and [hasMore] if successful and [MessageFailure] otherwise.
  Future<void> getChannelMessages(String channelId) async {
    emit(const MessagesState.loadInProgress());
    final failureOrMessages = await _repository.getChannelMessages(channelId);
    emit(
      failureOrMessages.fold(
        (f) => MessagesState.loadFailure(f),
        (messages) => MessagesState.loadSuccess(
          messages,
          hasMore: messages.length == fetchedMessageSize,
        ),
      ),
    );
  }

  /// Fetches the next page of messages for the given channelId.
  /// Emits a list of the old and new [Message] and [hasMore] if successful and [MessageFailure] otherwise.
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
                hasMore: newMessages.length == fetchedMessageSize,
              ),
            ),
          );
        }
      },
      orElse: () {},
    );
  }

  /// Adds the given message to the [MessagesState]
  void addNewMessage(Message message) {
    state.maybeWhen(
      loadSuccess: (messages, hasMore) async {
        final data = [message, ...messages];
        emit(MessagesState.loadSuccess(data, hasMore: hasMore));
      },
      orElse: () {},
    );
  }

  /// Removes the message for the given id from the [MessagesState]
  void deleteMessage(String messageId) {
    state.maybeWhen(
      loadSuccess: (messages, hasMore) async {
        final data = messages.where((e) => e.id != messageId).toList();
        emit(MessagesState.loadSuccess(data, hasMore: hasMore));
      },
      orElse: () {},
    );
  }

  /// Edits the [MessageText] and [updatedAt] properties in the [MessagesState] with the
  /// values from the provided message
  void updateMessage(Message message) {
    state.maybeWhen(
      loadSuccess: (messages, hasMore) async {
        final data = messages.map((e) {
          return e.id == message.id
              ? e.copyWith(
                  text: message.text,
                  updatedAt: message.updatedAt,
                )
              : e;
        }).toList();
        emit(MessagesState.loadSuccess(data, hasMore: hasMore));
      },
      orElse: () {},
    );
  }
}
