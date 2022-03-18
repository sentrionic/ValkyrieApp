import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

part 'change_password_cubit.freezed.dart';
part 'change_password_state.dart';

/// ChangePasswordCubit manages the password change request
@injectable
class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final IAuthFacade _authFacade;
  ChangePasswordCubit(this._authFacade) : super(ChangePasswordState.initial());

  /// Changes the value of the old [Password] in the [ChangePasswordState]
  /// and resets the error.
  Future<void> oldPasswordChanged(String oldPassword) async {
    emit(
      state.copyWith(
        oldPassword: Password(oldPassword),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Changes the value of the new [Password] in the [ChangePasswordState]
  /// and resets the error.
  Future<void> newPasswordChanged(String newPassword) async {
    emit(
      state.copyWith(
        newPassword: Password(newPassword),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Changes the value of the confirm new [Password] in the [ChangePasswordState]
  /// and resets the error.
  Future<void> confirmNewPasswordChanged(String confirmNewPassword) async {
    emit(
      state.copyWith(
        confirmNewPassword: Password(confirmNewPassword),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Changes the user's password in the network.
  /// Emits [unit] when successful, [AuthFailure] otherwise.
  Future<void> submitPasswordChange() async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isOldPasswordValid = state.oldPassword.isValid();
    final isNewPasswordValid = state.newPassword.isValid();
    final isConfirmNewPasswordValid = state.confirmNewPassword.isValid();

    if (isOldPasswordValid && isNewPasswordValid && isConfirmNewPasswordValid) {
      final isSame = state.newPassword.getOrCrash() ==
          state.confirmNewPassword.getOrCrash();

      if (isSame) {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );

        failureOrSuccess = await _authFacade.changePassword(
          oldPassword: state.oldPassword,
          newPassword: state.newPassword,
          confirmNewPassword: state.confirmNewPassword,
        );
      } else {
        failureOrSuccess = left(const AuthFailure.passwordsDontMatch());
      }
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
