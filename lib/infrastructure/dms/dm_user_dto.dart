import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/dms/dm_user.dart';

part 'dm_user_dto.freezed.dart';

@freezed
class DMUserDto with _$DMUserDto {
  const DMUserDto._();

  const factory DMUserDto({
    required String id,
    required String username,
    required String image,
    required bool isOnline,
    required bool isFriend,
  }) = _DMUserDto;

  DMUser toDomain() {
    return DMUser(
      id: id,
      username: username,
      image: image,
      isOnline: isOnline,
      isFriend: isFriend,
    );
  }

  factory DMUserDto.fromMap(Map<String, dynamic> map) {
    return DMUserDto(
      id: map['id'],
      username: map['username'],
      image: map['image'],
      isOnline: map['isOnline'],
      isFriend: map['isFriend'],
    );
  }
}
