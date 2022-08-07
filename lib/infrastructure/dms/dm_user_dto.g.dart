// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dm_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DMUserDto _$$_DMUserDtoFromJson(Map<String, dynamic> json) => _$_DMUserDto(
      id: json['id'] as String,
      username: json['username'] as String,
      image: json['image'] as String,
      isOnline: json['isOnline'] as bool,
      isFriend: json['isFriend'] as bool,
    );

Map<String, dynamic> _$$_DMUserDtoToJson(_$_DMUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
      'isOnline': instance.isOnline,
      'isFriend': instance.isFriend,
    };
