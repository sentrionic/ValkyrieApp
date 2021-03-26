import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

@freezed
class Member with _$Member {
  const Member._();

  const factory Member({
    required String id,
    required String username,
    required String image,
    required bool isOnline,
    required bool isFriend,
    String? nickname,
    String? color,
  }) = _Member;
}
