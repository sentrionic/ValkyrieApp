import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';

part 'message_dto.freezed.dart';

@freezed
class MessageDto with _$MessageDto {
  const MessageDto._();

  const factory MessageDto({
    required String id,
    String? text,
    AttachmentDto? attachment,
    required String createdAt,
    required String updatedAt,
    required MemberDto user,
  }) = _MessageDto;

  Message toDomain() {
    return Message(
      id: id,
      text: text != null ? MessageText(text!) : null,
      attachment: attachment?.toDomain(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      user: user.toDomain(),
    );
  }

  factory MessageDto.fromMap(Map<String, dynamic> map) {
    return MessageDto(
      id: map['id'],
      text: map['text'],
      attachment: map['attachment'] != null
          ? AttachmentDto.fromMap(map['attachment'])
          : null,
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      user: MemberDto.fromMap(map['user']),
    );
  }
}

@freezed
class AttachmentDto with _$AttachmentDto {
  const AttachmentDto._();

  const factory AttachmentDto({
    required String filename,
    required String url,
    required String filetype,
  }) = _AttachmentDto;

  Attachment toDomain() {
    return Attachment(
      filename: filename,
      url: url,
      filetype: filetype,
    );
  }

  factory AttachmentDto.fromMap(Map<String, dynamic> map) {
    return AttachmentDto(
      filename: map['filename'],
      url: map['url'],
      filetype: map['filetype'],
    );
  }
}
