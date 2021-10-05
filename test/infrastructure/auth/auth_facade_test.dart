import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/infrastructure/auth/auth_facade.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late AuthFacade repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = AuthFacade(client);
  });

  group('Login', () {
    final data = fixture('account.json');
    final email = getRandomEmail();
    final password = getRandomString(12);

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/login'),
          headers: Headers()..add("set-cookie", ""),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/account/login'),
        ),
      );
    }

    void setUpHttp401Failure() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
          },
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 401,
            requestOptions: RequestOptions(path: '/account/login'),
          ),
          requestOptions: RequestOptions(path: '/account/login'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to get the user's credentials",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.login(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );

        // assert
        verify(
          () => client.post(
            '/account/login',
            data: {
              "email": email,
              "password": password,
            },
          ),
        ).called(1);
      },
    );

    test(
      "should return the unit when the response code is 200 (success)",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.login(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return an AuthFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.login(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );

    test(
      'should return an AuthFailure.invalidCredentials when DioError is thrown with status 401',
      () async {
        // arrange
        setUpHttp401Failure();

        // act
        final result = await repository.login(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.invalidCredentials()),
        );
      },
    );

    test(
      'should return an AuthFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.login(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );
  });

  group('Register', () {
    final data = fixture('account.json');
    final errorData = fixture('field_errors.json');
    final email = getRandomEmail();
    final password = getRandomString(12);
    final username = getRandomName();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
            "username": username,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 201,
          requestOptions: RequestOptions(path: '/account/register'),
          headers: Headers()..add("set-cookie", ""),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
            "username": username,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/account/register'),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
            "username": username,
          },
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: errorData,
            statusCode: 400,
            requestOptions: RequestOptions(path: '/account/register'),
          ),
          requestOptions: RequestOptions(path: '/account/register'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
            "password": password,
            "username": username,
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to register the user and get their credentials",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.register(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
        );

        // assert
        verify(
          () => client.post(
            '/account/register',
            data: {
              "email": email,
              "password": password,
              "username": username,
            },
          ),
        ).called(1);
      },
    );

    test(
      "should return the unit when the response code is 201 (created)",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.register(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
        );

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return an AuthFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.register(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );

    test(
      'should return an AuthFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.register(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return an AuthFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.register(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );
  });

  group('ChangePassword', () {
    final oldPassword = getRandomString(8);
    final newPassword = getRandomString(8);
    final errorData = fixture('field_error.json');
    final errorsData = fixture('field_errors.json');

    void setUpHttpSuccess() {
      when(
        () => client.put(
          any(),
          data: {
            "currentPassword": oldPassword,
            "newPassword": newPassword,
            "confirmNewPassword": newPassword
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/change-password'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.put(
          any(),
          data: {
            "currentPassword": oldPassword,
            "newPassword": newPassword,
            "confirmNewPassword": newPassword
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/account/change-password'),
        ),
      );
    }

    void setUpHttp401Failure() {
      when(
        () => client.put(
          any(),
          data: {
            "currentPassword": oldPassword,
            "newPassword": newPassword,
            "confirmNewPassword": newPassword
          },
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: errorData,
            statusCode: 401,
            requestOptions: RequestOptions(path: '/account/change-password'),
          ),
          requestOptions: RequestOptions(path: '/account/change-password'),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.put(
          any(),
          data: {
            "currentPassword": oldPassword,
            "newPassword": newPassword,
            "confirmNewPassword": newPassword
          },
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: errorsData,
            statusCode: 400,
            requestOptions: RequestOptions(path: '/account/change-password'),
          ),
          requestOptions: RequestOptions(path: '/account/change-password'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.put(
          any(),
          data: {
            "currentPassword": oldPassword,
            "newPassword": newPassword,
            "confirmNewPassword": newPassword
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a PUT request to the network to change the user's password",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.changePassword(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
        );

        // assert
        verify(
          () => client.put(
            '/account/change-password',
            data: {
              "currentPassword": oldPassword,
              "newPassword": newPassword,
              "confirmNewPassword": newPassword
            },
          ),
        ).called(1);
      },
    );

    test(
      "should return the unit when the response code is 200 (success)",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.changePassword(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
        );

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return an AuthFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.changePassword(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );

    test(
      'should return an AuthFailure.badRequest when the oldPassword is wrong and DioError is thrown',
      () async {
        // arrange
        setUpHttp401Failure();

        // act
        final result = await repository.changePassword(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return an AuthFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.changePassword(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return an AuthFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.changePassword(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );
  });

  group('ForgotPassword', () {
    final email = getRandomEmail();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/forgot-password'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/account/forgot-password'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.post(
          any(),
          data: {
            "email": email,
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to request a password reset",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.forgotPassword(
          emailAddress: EmailAddress(email),
        );

        // assert
        verify(
          () => client.post(
            '/account/forgot-password',
            data: {
              "email": email,
            },
          ),
        ).called(1);
      },
    );

    test(
      "should return the unit when the response code is 200 (success)",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.forgotPassword(
          emailAddress: EmailAddress(email),
        );

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return an AuthFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.forgotPassword(
          emailAddress: EmailAddress(email),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );

    test(
      'should return an AuthFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.forgotPassword(
          emailAddress: EmailAddress(email),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const AuthFailure.serverError()),
        );
      },
    );
  });
}
