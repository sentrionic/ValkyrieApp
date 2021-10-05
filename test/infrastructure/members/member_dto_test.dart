import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tMemberDto = MemberDto(
    id: "1440949629427388416",
    username: "Sen",
    image:
        "https://harmony-cdn.s3.eu-central-1.amazonaws.com/files/valkyrie/users/1440949629427388416/1440950088254885888.jpeg",
    isOnline: false,
    isFriend: false,
  );

  const tMember = Member(
    id: "1440949629427388416",
    username: "Sen",
    image:
        "https://harmony-cdn.s3.eu-central-1.amazonaws.com/files/valkyrie/users/1440949629427388416/1440950088254885888.jpeg",
    isOnline: false,
    isFriend: false,
  );

  group('MemberDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('member.json'));

        // act
        final result = MemberDto.fromMap(jsonMap);

        // assert
        expect(result, tMemberDto);
      },
    );

    test(
      'should return a domain model from the MemberDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('member.json'));

        // act
        final result = MemberDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tMember);
      },
    );
  });
}
