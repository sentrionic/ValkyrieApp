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
    String? url,
    String? filetype,
    required String createdAt,
    required String updatedAt,
    required MemberDto user,
  }) = _MessageDto;

  Message toDomain() {
    return Message(
      id: id,
      url: url,
      text: text != null ? MessageText(text!) : null,
      filetype: filetype,
      createdAt: createdAt,
      updatedAt: updatedAt,
      user: user.toDomain(),
    );
  }

  factory MessageDto.fromMap(Map<String, dynamic> map) {
    return MessageDto(
      id: map['id'],
      text: map['text'],
      url: map['url'],
      filetype: map['filetype'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      user: MemberDto.fromMap(map['user']),
    );
  }
}
