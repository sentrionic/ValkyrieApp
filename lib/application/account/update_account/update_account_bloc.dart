import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';

part 'update_account_event.dart';
part 'update_account_state.dart';
part 'update_account_bloc.freezed.dart';

@injectable
class UpdateAccountBloc extends Bloc<UpdateAccountEvent, UpdateAccountState> {
  final IAccountRepository _repository;

  UpdateAccountBloc(this._repository) : super(UpdateAccountState.initial());

  @override
  Stream<UpdateAccountState> mapEventToState(UpdateAccountEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
          saveFailureOrSuccessOption: none(),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.username),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<AccountFailure, Account>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isUsernameValid = state.username.isValid();

        if (isEmailValid && isUsernameValid) {
          yield state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          );
          failureOrSuccess = await _repository.updateAccount(
            emailAddress: state.emailAddress,
            username: state.username,
          );
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
