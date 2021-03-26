import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';

abstract class IMessageRepository {
  Future<Either<MessageFailure, List<Message>>> getChannelMessages(
    String channelId, [
    String? cursor,
  ]);

  Future<Either<MessageFailure, Unit>> createMessage(
    String channelId,
    String text,
  );
}
