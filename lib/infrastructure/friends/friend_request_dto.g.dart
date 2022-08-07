// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendRequestDto _$$_FriendRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_FriendRequestDto(
      id: json['id'] as String,
      username: json['username'] as String,
      image: json['image'] as String,
      type: json['type'] as int,
    );

Map<String, dynamic> _$$_FriendRequestDtoToJson(_$_FriendRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
      'type': instance.type,
    };
