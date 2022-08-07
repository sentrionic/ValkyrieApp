import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';

part 'message_dto.freezed.dart';
part 'message_dto.g.dart';

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

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);
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

  factory AttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDtoFromJson(json);
}
