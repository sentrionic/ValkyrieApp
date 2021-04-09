import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/member/member.dart';

import 'message_value_objects.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required String id,
    MessageText? text,
    String? url,
    String? filetype,
    required String createdAt,
    required String updatedAt,
    required Member user,
  }) = _Message;
}
