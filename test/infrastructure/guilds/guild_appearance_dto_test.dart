import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_appearance_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const nickname = "My Nickname";
  const color = "#fff";

  const tGuildAppearanceDto = GuildAppearanceDto(
    nickname: nickname,
    color: color,
  );

  final tGuildAppearance = GuildAppearance(
    nickname: Nickname(nickname),
    color: HexColor(color),
  );

  group('GuildAppearanceDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('appearance.json'));

        // act
        final result = GuildAppearanceDto.fromMap(jsonMap);

        // assert
        expect(result, tGuildAppearanceDto);
      },
    );

    test(
      'should return a domain model from the GuildAppearanceDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('appearance.json'));

        // act
        final result = GuildAppearanceDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tGuildAppearance);
      },
    );
  });
}
