import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_failure.freezed.dart';

@freezed
class MemberFailure with _$MemberFailure {
  const factory MemberFailure.unexpected() = _Unexpected;
  const factory MemberFailure.badRequest(String message) = _BadRequest;
}
