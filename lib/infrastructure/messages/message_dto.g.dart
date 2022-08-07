// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDto _$$_MessageDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageDto(
      id: json['id'] as String,
      text: json['text'] as String?,
      attachment: json['attachment'] == null
          ? null
          : AttachmentDto.fromJson(json['attachment'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      user: MemberDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'attachment': instance.attachment,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user': instance.user,
    };

_$_AttachmentDto _$$_AttachmentDtoFromJson(Map<String, dynamic> json) =>
    _$_AttachmentDto(
      filename: json['filename'] as String,
      url: json['url'] as String,
      filetype: json['filetype'] as String,
    );

Map<String, dynamic> _$$_AttachmentDtoToJson(_$_AttachmentDto instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'url': instance.url,
      'filetype': instance.filetype,
    };
