import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';

part 'banned_member_dto.freezed.dart';

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

  factory BannedMemberDto.fromMap(Map<String, dynamic> map) {
    return BannedMemberDto(
      id: map['id'],
      username: map['username'],
      image: map['image'],
    );
  }
}
