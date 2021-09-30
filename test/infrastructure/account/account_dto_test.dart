import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/infrastructure/account/account_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tAccountDto = AccountDto(
    id: "1440949629427388416",
    username: "Test",
    email: "test@example.com",
    image:
        "https://harmony-cdn.s3.eu-central-1.amazonaws.com/files/valkyrie/users/1440949629427388416/1440950088254885888.jpeg",
  );

  final tAccount = Account(
    id: "1440949629427388416",
    username: Username("Test"),
    email: EmailAddress("test@example.com"),
    image:
        "https://harmony-cdn.s3.eu-central-1.amazonaws.com/files/valkyrie/users/1440949629427388416/1440950088254885888.jpeg",
  );

  group('AccountDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('account.json'));

        // act
        final result = AccountDto.fromMap(jsonMap);

        // assert
        expect(result, tAccountDto);
      },
    );

    test(
      'should return a domain model from the AccountDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('account.json'));

        // act
        final result = AccountDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tAccount);
      },
    );
  });
}
