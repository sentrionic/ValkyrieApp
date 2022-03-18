import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

/// ForgotPasswordCubit manages the forgot password flow
@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final IAuthFacade _authFacade;
  ForgotPasswordCubit(this._authFacade) : super(ForgotPasswordState.initial());

  /// Changes the value of the [EmailAddress] in the [ForgotPasswordState]
  /// and resets the error.
  Future<void> emailChanged(String email) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(email),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Sends a forgot password request to the network.
  /// Emits [unit] when successful, [AuthFailure] otherwise.
  Future<void> submitForgotPassword() async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();

    if (isEmailValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess =
          await _authFacade.forgotPassword(emailAddress: state.emailAddress);
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
