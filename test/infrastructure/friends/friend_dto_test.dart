import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tFriendDto = FriendDto(
    id: "1443510513748152320",
    username: "Bob",
    image:
        "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
    isOnline: false,
  );

  const tFriend = Friend(
    id: "1443510513748152320",
    username: "Bob",
    image:
        "https://gravatar.com/avatar/4b9bb80620f03eb3719e0a061c14283d?d=identicon",
    isOnline: false,
  );

  group('FriendDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('friend.json'));

        // act
        final result = FriendDto.fromMap(jsonMap);

        // assert
        expect(result, tFriendDto);
      },
    );

    test(
      'should return a domain model from the FriendDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('friend.json'));

        // act
        final result = FriendDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tFriend);
      },
    );
  });
}
