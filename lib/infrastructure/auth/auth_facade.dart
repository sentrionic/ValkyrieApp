import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final Dio _dio;
  final FlutterSecureStorage _storage;

  AuthFacade(this._dio, this._storage);

  @override
  Future<Either<AuthFailure, Unit>> login({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailString = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final response = await _dio.post(
        '/account/login',
        data: {"email": emailString, "password": passwordStr},
      );

      if (response.statusCode == 201) {
        final cookies = response.headers['set-cookie'];
        _setCookie(cookies!);
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 404) {
        return left(const AuthFailure.invalidCredentials());
      }
      return left(const AuthFailure.serverError());
    } on SocketException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> register({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  }) async {
    final emailString = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final usernameStr = username.getOrCrash();

    try {
      final response = await _dio.post(
        '/account/register',
        data: {
          "email": emailString,
          "password": passwordStr,
          "username": usernameStr
        },
      );

      if (response.statusCode == 201) {
        final cookies = response.headers['set-cookie'];
        _setCookie(cookies!);
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } on DioError catch (err) {
      if (err.response != null) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(AuthFailure.badRequest(errors[0].message));
        }
      }

      return left(const AuthFailure.serverError());
    } on SocketException catch (err) {
      print(err);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<bool> checkAuthenticated() async {
    final cookie = await _storage.read(key: "cookie");
    return cookie != null;
  }

  @override
  Future<void> logout() async {
    try {
      await _dio.post("/account/logout");
      await _storage.delete(key: "cookie");
    } on DioError catch (e) {
      print(e);
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword({
    required Password oldPassword,
    required Password newPassword,
    required Password confirmNewPassword,
  }) async {
    final oldPasswordStr = oldPassword.getOrCrash();
    final newPasswordStr = newPassword.getOrCrash();
    final confirmNewPasswordStr = confirmNewPassword.getOrCrash();

    try {
      await _dio.put(
        '/account/change-password',
        data: {
          "currentPassword": oldPasswordStr,
          "newPassword": newPasswordStr,
          "confirmNewPassword": confirmNewPasswordStr
        },
      );

      return right(unit);
    } on DioError catch (err) {
      if (err.response?.statusCode == 401) {
        return left(const AuthFailure.badRequest("Invalid old password"));
      }
      return left(const AuthFailure.serverError());
    } on SocketException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotPassword({
    required EmailAddress emailAddress,
  }) async {
    final email = emailAddress.getOrCrash();

    try {
      await _dio.post(
        '/account/forgot-password',
        data: {
          "email": email,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const AuthFailure.serverError());
    } on SocketException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<void> _setCookie(List<String> cookies) async {
    if (cookies.isNotEmpty) {
      final authToken = cookies[0].split(';')[0];
      await _storage.write(key: "cookie", value: authToken);
    }
  }
}
