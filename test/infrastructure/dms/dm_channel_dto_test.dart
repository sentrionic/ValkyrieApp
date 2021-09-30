import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_user.dart';
import 'package:valkyrie_app/infrastructure/dms/dm_channel_dto.dart';
import 'package:valkyrie_app/infrastructure/dms/dm_user_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tDMChannelDto = DMChannelDto(
    id: "1443510582618624000",
    user: DMUserDto(
      id: "1443510513748152320",
      username: "Bob",
      image:
          "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
      isOnline: false,
      isFriend: false,
    ),
  );

  const tDMChannel = DMChannel(
    id: "1443510582618624000",
    user: DMUser(
      id: "1443510513748152320",
      username: "Bob",
      image:
          "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
      isOnline: false,
      isFriend: false,
    ),
  );

  group('DMChannelDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('dm.json'));

        // act
        final result = DMChannelDto.fromMap(jsonMap);

        // assert
        expect(result, tDMChannelDto);
      },
    );

    test(
      'should return a domain model from the DMChannelDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('dm.json'));

        // act
        final result = DMChannelDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tDMChannel);
      },
    );
  });

  const tDMNotificationDto = DMNotificationDto(
    id: "1443510582618624000",
    user: DMUserDto(
      id: "1443510513748152320",
      username: "Bob",
      image:
          "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
      isOnline: false,
      isFriend: false,
    ),
  );

  const tDMNotification = DMNotification(
    id: "1443510582618624000",
    count: 1,
    user: DMUser(
      id: "1443510513748152320",
      username: "Bob",
      image:
          "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
      isOnline: false,
      isFriend: false,
    ),
  );

  group('DMNotificationDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('dm.json'));

        // act
        final result = DMNotificationDto.fromMap(jsonMap);

        // assert
        expect(result, tDMNotificationDto);
      },
    );

    test(
      'should return a domain model from the DMNotificationDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('dm.json'));

        // act
        final result = DMNotificationDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tDMNotification);
      },
    );
  });
}
