import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';

part 'friend_request_dto.freezed.dart';
part 'friend_request_dto.g.dart';

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

  factory FriendRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestDtoFromJson(json);
}
