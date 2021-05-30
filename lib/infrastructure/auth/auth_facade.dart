import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';
import 'package:valkyrie_app/infrastructure/account/account_dto.dart';
import 'package:valkyrie_app/infrastructure/account/account_entity.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';
import 'package:valkyrie_app/infrastructure/core/hive_box_names.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final Dio _dio;

  AuthFacade(this._dio);

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

      final cookies = response.headers['set-cookie'];
      _setCookie(cookies!);
      final results = jsonDecode(response.data);
      final account = AccountDto.fromMap(results).toDomain();
      _setUserData(account);
      return right(unit);
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
        final results = jsonDecode(response.data);
        final account = AccountDto.fromMap(results).toDomain();
        _setUserData(account);
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
    final cookie = getCookie();
    return cookie != "null";
  }

  @override
  Future<void> logout() async {
    try {
      await _dio.post("/account/logout");
      await Hive.box(BoxNames.settingsBox).clear();
      await Hive.box<AccountEntity>(BoxNames.currentUser).clear();
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
      await Hive.box(BoxNames.settingsBox).put(BoxKeys.cookieKey, authToken);
    }
  }

  void _setUserData(Account account) {
    final box = Hive.box<AccountEntity>(BoxNames.currentUser);
    box.put(BoxKeys.currentKey, AccountEntity.fromDomain(account));
  }
}
