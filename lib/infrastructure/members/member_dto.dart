import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/member/member.dart';

part 'member_dto.freezed.dart';

@freezed
class MemberDto with _$MemberDto {
  const MemberDto._();

  const factory MemberDto({
    required String id,
    required String username,
    required String image,
    required bool isOnline,
    required bool isFriend,
    String? nickname,
    String? color,
  }) = _MemberDto;

  Member toDomain() {
    return Member(
      id: id,
      username: username,
      image: image,
      isOnline: isOnline,
      isFriend: isFriend,
      nickname: nickname,
      color: color,
    );
  }

  factory MemberDto.fromMap(Map<String, dynamic> map) {
    return MemberDto(
      id: map['id'],
      username: map['username'],
      image: map['image'],
      isOnline: map['isOnline'],
      isFriend: map['isFriend'],
      nickname: map['nickname'],
      color: map['color'],
    );
  }
}
