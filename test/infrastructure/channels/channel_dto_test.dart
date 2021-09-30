import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/infrastructure/channels/channel_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tChannelDto = ChannelDto(
    id: "1440949655578873856",
    name: "general",
    isPublic: true,
    hasNotification: false,
  );

  final tChannel = Channel(
    id: "1440949655578873856",
    name: ChannelName("general"),
    isPublic: true,
    hasNotification: false,
  );

  group('ChannelDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('channel.json'));

        // act
        final result = ChannelDto.fromMap(jsonMap);

        // assert
        expect(result, tChannelDto);
      },
    );

    test(
      'should return a domain model from the ChannelDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('channel.json'));

        // act
        final result = ChannelDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tChannel);
      },
    );
  });
}
