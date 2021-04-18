import 'package:freezed_annotation/freezed_annotation.dart';

part 'banned_member.freezed.dart';

@freezed
class BannedMember with _$BannedMember {
  const BannedMember._();

  const factory BannedMember({
    required String id,
    required String username,
    required String image,
  }) = _BannedMember;
}
