import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';

part 'update_account_bloc.freezed.dart';
part 'update_account_event.dart';
part 'update_account_state.dart';

/// UpdateAccountBloc manages the update of the user's account information
@injectable
class UpdateAccountBloc extends Bloc<UpdateAccountEvent, UpdateAccountState> {
  final IAccountRepository _repository;

  UpdateAccountBloc(this._repository) : super(UpdateAccountState.initial()) {
    on<UpdateAccountEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) async {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(e.email),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        usernameChanged: (e) async {
          emit(
            state.copyWith(
              username: Username(e.username),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        imageChanged: (e) async {
          emit(
            state.copyWith(
              image: e.image,
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        saved: (e) async {
          Either<AccountFailure, Account>? failureOrSuccess;

          final isEmailValid = state.emailAddress.isValid();
          final isUsernameValid = state.username.isValid();

          if (isEmailValid && isUsernameValid) {
            emit(
              state.copyWith(
                isSaving: true,
                saveFailureOrSuccessOption: none(),
              ),
            );

            failureOrSuccess = await _repository.updateAccount(
              emailAddress: state.emailAddress,
              username: state.username,
              image: state.image,
            );
          }

          emit(
            state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              saveFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }
}
