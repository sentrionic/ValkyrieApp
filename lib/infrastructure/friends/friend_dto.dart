import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';

part 'friend_dto.freezed.dart';

@freezed
class FriendDto with _$FriendDto {
  const FriendDto._();

  const factory FriendDto({
    required String id,
    required String username,
    required String image,
    required bool isOnline,
  }) = _FriendDto;

  Friend toDomain() {
    return Friend(id: id, username: username, image: image, isOnline: isOnline);
  }

  factory FriendDto.fromMap(Map<String, dynamic> map) {
    return FriendDto(
      id: map['id'],
      username: map['username'],
      image: map['image'],
      isOnline: map['isOnline'],
    );
  }
}
