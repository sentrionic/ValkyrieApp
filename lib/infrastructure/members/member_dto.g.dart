// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberDto _$$_MemberDtoFromJson(Map<String, dynamic> json) => _$_MemberDto(
      id: json['id'] as String,
      username: json['username'] as String,
      image: json['image'] as String,
      isOnline: json['isOnline'] as bool,
      isFriend: json['isFriend'] as bool,
      nickname: json['nickname'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$_MemberDtoToJson(_$_MemberDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
      'isOnline': instance.isOnline,
      'isFriend': instance.isFriend,
      'nickname': instance.nickname,
      'color': instance.color,
    };
