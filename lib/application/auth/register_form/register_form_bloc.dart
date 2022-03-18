import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

part 'register_form_bloc.freezed.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

/// RegisterFormBloc manages the user's register flow
@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) async {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(e.email),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        usernameChanged: (e) async {
          emit(
            state.copyWith(
              username: Username(e.username),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        passwordChanged: (e) async {
          emit(
            state.copyWith(
              password: Password(e.password),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        registerPressed: (e) async {
          Either<AuthFailure, Unit>? failureOrSuccess;

          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          final isUsernameValid = state.username.isValid();

          if (isEmailValid && isPasswordValid && isUsernameValid) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );

            failureOrSuccess = await _authFacade.register(
              emailAddress: state.emailAddress,
              username: state.username,
              password: state.password,
            );
          }

          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }
}
