import 'package:freezed_annotation/freezed_annotation.dart';

part 'guild_failure.freezed.dart';

@freezed
class GuildFailure with _$GuildFailure {
  const factory GuildFailure.unexpected() = _Unexpected;
  const factory GuildFailure.badRequest(String message) = _BadRequest;
}
