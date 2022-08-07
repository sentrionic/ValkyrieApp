import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';

part 'banned_member_dto.freezed.dart';
part 'banned_member_dto.g.dart';

@freezed
class BannedMemberDto with _$BannedMemberDto {
  const BannedMemberDto._();

  const factory BannedMemberDto({
    required String id,
    required String username,
    required String image,
  }) = _BannedMemberDto;

  BannedMember toDomain() {
    return BannedMember(
      id: id,
      username: username,
      image: image,
    );
  }

  factory BannedMemberDto.fromJson(Map<String, dynamic> json) =>
      _$BannedMemberDtoFromJson(json);
}
