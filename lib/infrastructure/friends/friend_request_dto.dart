import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';

part 'friend_request_dto.freezed.dart';

@freezed
class FriendRequestDto with _$FriendRequestDto {
  const FriendRequestDto._();

  const factory FriendRequestDto({
    required String id,
    required String username,
    required String image,
    required int type,
  }) = _FriendRequestDto;

  FriendRequest toDomain() {
    return FriendRequest(
      id: id,
      username: username,
      image: image,
      type: type == 0 ? RequestType.outgoing : RequestType.incoming,
    );
  }

  factory FriendRequestDto.fromMap(Map<String, dynamic> map) {
    return FriendRequestDto(
      id: map['id'],
      username: map['username'],
      image: map['image'],
      type: map['type'],
    );
  }
}
