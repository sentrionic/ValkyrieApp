import 'package:freezed_annotation/freezed_annotation.dart';

part 'dm_user.freezed.dart';

@freezed
class DMUser with _$DMUser {
  const DMUser._();

  const factory DMUser({
    required String id,
    required String username,
    required String image,
    required bool isOnline,
    required bool isFriend,
  }) = _DMUser;
}
