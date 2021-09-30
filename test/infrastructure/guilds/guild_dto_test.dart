import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tGuildDto = GuildDto(
    id: "1440949655536930816",
    name: "Test Server",
    defaultChannelId: "1440949655578873856",
    ownerId: "1440949629427388416",
    hasNotification: false,
  );

  final tGuild = Guild(
    id: "1440949655536930816",
    name: GuildName("Test Server"),
    defaultChannel: "1440949655578873856",
    ownerId: "1440949629427388416",
    hasNotification: false,
  );

  group('GuildDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('guild.json'));

        // act
        final result = GuildDto.fromMap(jsonMap);

        // assert
        expect(result, tGuildDto);
      },
    );

    test(
      'should return a domain model from the GuildDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('guild.json'));

        // act
        final result = GuildDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tGuild);
      },
    );
  });
}
