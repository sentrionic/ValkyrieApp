part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loadInProgress() = _LoadInProgress;
  const factory AccountState.loadSuccess(Account account) = _LoadSuccess;
  const factory AccountState.loadFailure(AccountFailure failure) = _LoadFailure;
}
