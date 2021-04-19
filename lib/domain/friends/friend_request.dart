import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request.freezed.dart';

enum RequestType { outgoing, incoming }

@freezed
class FriendRequest with _$FriendRequest {
  const FriendRequest._();

  const factory FriendRequest({
    required String id,
    required String username,
    required String image,
    required RequestType type,
  }) = _FriendRequest;
}
