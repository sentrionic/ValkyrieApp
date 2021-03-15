import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'auth_value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> register({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> login({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<bool> checkAuthenticated();

  Future<void> logout();

  Future<Either<AuthFailure, Unit>> changePassword({
    required Password oldPassword,
    required Password newPassword,
    required Password confirmNewPassword,
  });

  Future<Either<AuthFailure, Unit>> forgotPassword({
    required EmailAddress emailAddress,
  });
}
