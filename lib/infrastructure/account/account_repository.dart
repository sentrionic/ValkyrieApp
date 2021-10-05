import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/infrastructure/account/account_dto.dart';
import 'package:valkyrie_app/infrastructure/account/account_entity.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';
import 'package:valkyrie_app/infrastructure/core/hive_box_names.dart';

@LazySingleton(as: IAccountRepository)
class AccountRepository extends IAccountRepository {
  final Dio _dio;

  AccountRepository(this._dio);

  @override
  Future<Either<AccountFailure, Account>> getAccount() async {
    try {
      final response = await _dio.get('/account');
      final results = jsonDecode(response.data);
      final account = AccountDto.fromMap(results).toDomain();
      _setUserData(account);
      return right(account);
    } on DioError catch (err) {
      if (err.response?.statusCode == 404) {
        return left(const AccountFailure.unauthenticated());
      }
      return left(const AccountFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const AccountFailure.unexpected());
    }
  }

  @override
  Future<Either<AccountFailure, Account>> updateAccount({
    required EmailAddress emailAddress,
    required Username username,
    File? image,
  }) async {
    try {
      final formData = FormData.fromMap({
        "username": username.getOrCrash(),
        "email": emailAddress.getOrCrash(),
      });

      if (image != null) {
        formData.files.add(
          MapEntry(
            "image",
            await MultipartFile.fromFile(
              image.path,
              contentType: MediaType("image", "jpeg"),
            ),
          ),
        );
      }

      final response = await _dio.put('/account', data: formData);

      final results = jsonDecode(response.data);
      final account = AccountDto.fromMap(results).toDomain();
      _setUserData(account);
      return right(account);
    } on DioError catch (err) {
      if (err.response?.statusCode == 400) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(AccountFailure.badRequest(errors[0].message));
        }
      }

      return left(const AccountFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const AccountFailure.unexpected());
    }
  }

  void _setUserData(Account account) {
    // Hacky solution to allow testing
    if (!Platform.environment.containsKey('FLUTTER_TEST')) {
      final box = Hive.box<AccountEntity>(BoxNames.currentUser);
      box.put(BoxKeys.currentKey, AccountEntity.fromDomain(account));
    }
  }
}
