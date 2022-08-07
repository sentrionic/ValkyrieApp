// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendDto _$$_FriendDtoFromJson(Map<String, dynamic> json) => _$_FriendDto(
      id: json['id'] as String,
      username: json['username'] as String,
      image: json['image'] as String,
      isOnline: json['isOnline'] as bool,
    );

Map<String, dynamic> _$$_FriendDtoToJson(_$_FriendDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
      'isOnline': instance.isOnline,
    };
