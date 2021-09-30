import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_request_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tFriendRequestDto = FriendRequestDto(
    id: "1443570815097376768",
    username: "Dan",
    image:
        "https://gravatar.com/avatar/6bf919361414694081de8f80cedba005?d=identicon",
    type: 0,
  );

  const tFriendRequest = FriendRequest(
    id: "1443570815097376768",
    username: "Dan",
    image:
        "https://gravatar.com/avatar/6bf919361414694081de8f80cedba005?d=identicon",
    type: RequestType.outgoing,
  );

  group('FriendRequestDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('request.json'));

        // act
        final result = FriendRequestDto.fromMap(jsonMap);

        // assert
        expect(result, tFriendRequestDto);
      },
    );

    test(
      'should return a domain model from the FriendRequestDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('request.json'));

        // act
        final result = FriendRequestDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tFriendRequest);
      },
    );
  });
}
