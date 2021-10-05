import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/infrastructure/account/account_dto.dart';
import 'package:valkyrie_app/infrastructure/account/account_repository.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late AccountRepository repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = AccountRepository(client);
  });

  group('GetAccount', () {
    final data = fixture('account.json');
    final result = json.decode(data);
    final account = AccountDto.fromMap(result);

    void setUpHttpSuccess() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account'),
        ),
      );
    }

    void setUpHttp404Failure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          response: Response(
            statusCode: 404,
            requestOptions: RequestOptions(path: '/account', method: "GET"),
          ),
          requestOptions: RequestOptions(path: '/account', method: "GET"),
        ),
      );
    }

    void setUpHttpFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/account', method: "GET"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the user's info",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getAccount();

        // assert
        verify(
          () => client.get(
            '/account',
          ),
        ).called(1);
      },
    );

    test(
      "should return the user's information when the response code is 200 (success)",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.getAccount();

        // assert
        expect(result.isRight(), true);
        expect(
          result.getOrElse(() => Account.empty()),
          equals(account.toDomain()),
        );
      },
    );

    test(
      'should return an AccountFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.getAccount();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AccountFailure.unexpected()),
        );
      },
    );

    test(
      'should return an AccountFailure.unauthenticated when DioError is thrown with code 404',
      () async {
        // arrange
        setUpHttp404Failure();

        // act
        final result = await repository.getAccount();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AccountFailure.unauthenticated()),
        );
      },
    );

    test(
      'should return an AccountFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.getAccount();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AccountFailure.unexpected()),
        );
      },
    );
  });

  group("UpdateAccount", () {
    final data = fixture('account.json');
    final result = json.decode(data);
    final account = AccountDto.fromMap(result);

    final errorData = fixture('field_errors.json');

    final email = getRandomEmail();
    final name = getRandomName();

    void setUpHttpSuccess() {
      when(
        () => client.put(any(), data: any(named: "data")),
      ).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.put(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/account'),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.put(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: errorData,
            statusCode: 400,
            requestOptions: RequestOptions(path: '/account'),
          ),
          requestOptions: RequestOptions(path: '/account'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.put(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a PUT request to the network to update the user",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.updateAccount(
          emailAddress: EmailAddress(email),
          username: Username(name),
        );

        // assert
        verify(
          () => client.put(
            '/account',
            data: any(named: "data"),
          ),
        ).called(1);
      },
    );

    test(
      'should return the account when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.updateAccount(
          emailAddress: EmailAddress(email),
          username: Username(name),
        );

        // assert
        expect(result.isRight(), true);
        expect(
          result.getOrElse(() => Account.empty()),
          equals(account.toDomain()),
        );
      },
    );

    test(
      'should return an AccountFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.updateAccount(
          emailAddress: EmailAddress(email),
          username: Username(name),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AccountFailure.unexpected()),
        );
      },
    );

    test(
      'should return an AccountFailure.badRequest when DioError is thrown',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.updateAccount(
          emailAddress: EmailAddress(email),
          username: Username(name),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AccountFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return an AccountFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.updateAccount(
          emailAddress: EmailAddress(email),
          username: Username(name),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AccountFailure.unexpected()),
        );
      },
    );
  });
}
