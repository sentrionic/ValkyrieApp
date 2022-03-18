import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/member/member.dart';

import 'package:valkyrie_app/domain/message/message_value_objects.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required String id,
    MessageText? text,
    Attachment? attachment,
    required String createdAt,
    required String updatedAt,
    required Member user,
  }) = _Message;
}

@freezed
class Attachment with _$Attachment {
  const Attachment._();

  const factory Attachment({
    String? filename,
    String? url,
    String? filetype,
  }) = _Attachment;
}
