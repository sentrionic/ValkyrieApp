import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';
import 'package:valkyrie_app/infrastructure/members/banned_member_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tBannedMemberDto = BannedMemberDto(
    id: "1443570815097376768",
    username: "Dan",
    image:
        "https://gravatar.com/avatar/6bf919361414694081de8f80cedba005?d=identicon",
  );

  const tBannedMember = BannedMember(
    id: "1443570815097376768",
    username: "Dan",
    image:
        "https://gravatar.com/avatar/6bf919361414694081de8f80cedba005?d=identicon",
  );

  group('BannedMemberDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('ban.json'));

        // act
        final result = BannedMemberDto.fromMap(jsonMap);

        // assert
        expect(result, tBannedMemberDto);
      },
    );

    test(
      'should return a domain model from the BannedMemberDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('ban.json'));

        // act
        final result = BannedMemberDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tBannedMember);
      },
    );
  });
}
