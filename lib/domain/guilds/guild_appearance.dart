import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/core/failures.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

part 'guild_appearance.freezed.dart';

@freezed
class GuildAppearance with _$GuildAppearance {
  const GuildAppearance._();

  const factory GuildAppearance({
    Nickname? nickname,
    HexColor? color,
  }) = _GuildAppearance;

  factory GuildAppearance.empty() => const GuildAppearance();

  Option<ValueFailure<dynamic>> get failureOption {
    return nickname!.failureOrUnit
        .andThen(color!.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
