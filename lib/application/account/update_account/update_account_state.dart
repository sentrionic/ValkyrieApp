part of 'update_account_bloc.dart';

@freezed
class UpdateAccountState with _$UpdateAccountState {
  const factory UpdateAccountState({
    required Username username,
    required EmailAddress emailAddress,
    @Default(null) File? image,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<AccountFailure, Account>> saveFailureOrSuccessOption,
  }) = _UpdateAccountState;

  factory UpdateAccountState.initial() => UpdateAccountState(
        username: Username(''),
        emailAddress: EmailAddress(''),
        showErrorMessages: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
