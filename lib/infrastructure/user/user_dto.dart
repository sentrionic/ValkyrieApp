import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/user/user.dart';

part 'user_dto.freezed.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String id,
    required String username,
    required String image,
  }) = _UserDto;

  User toDomain() {
    return User(
      id: id,
      username: username,
      image: image,
    );
  }

  factory UserDto.fromMap(Map<String, dynamic> map) {
    return UserDto(
      id: map['id'],
      username: map['username'],
      image: map['image'],
    );
  }
}
