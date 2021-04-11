import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

part 'guild_appearance_dto.freezed.dart';

@freezed
class GuildAppearanceDto with _$GuildAppearanceDto {
  const GuildAppearanceDto._();

  const factory GuildAppearanceDto({
    String? nickname,
    String? color,
  }) = _GuildAppearanceDto;

  GuildAppearance toDomain() {
    return GuildAppearance(
      nickname: nickname != null ? Nickname(nickname!) : null,
      color: color != null ? HexColor(color!) : null,
    );
  }

  factory GuildAppearanceDto.fromMap(Map<String, dynamic> map) {
    return GuildAppearanceDto(
      nickname: map['nickname'],
      color: map['color'],
    );
  }
}
