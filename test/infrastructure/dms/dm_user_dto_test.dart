import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/dms/dm_user.dart';
import 'package:valkyrie_app/infrastructure/dms/dm_user_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tDMUserDto = DMUserDto(
    id: "1443510513748152320",
    username: "Bob",
    image:
        "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
    isOnline: false,
    isFriend: false,
  );

  const tDMUser = DMUser(
    id: "1443510513748152320",
    username: "Bob",
    image:
        "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
    isOnline: false,
    isFriend: false,
  );

  group('DMUserDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('dm_user.json'));

        // act
        final result = DMUserDto.fromMap(jsonMap);

        // assert
        expect(result, tDMUserDto);
      },
    );

    test(
      'should return a domain model from the DMUserDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('dm_user.json'));

        // act
        final result = DMUserDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tDMUser);
      },
    );
  });
}
