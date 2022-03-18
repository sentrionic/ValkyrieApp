import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';

part 'account_state.dart';
part 'account_cubit.freezed.dart';

/// AccountCubit gets the user's account information
@injectable
class AccountCubit extends Cubit<AccountState> {
  final IAccountRepository _repository;

  AccountCubit(this._repository) : super(const AccountState.initial());

  /// Fetches the user's account information from the network
  Future<void> getAccount() async {
    emit(const AccountState.loadInProgress());
    final failureOrAccount = await _repository.getAccount();
    emit(
      failureOrAccount.fold(
        (f) => AccountState.loadFailure(f),
        (account) => AccountState.loadSuccess(account),
      ),
    );
  }

  /// Emits the changes to the in the cubit stored account
  Future<void> updateAccount(Account updatedAccount) async {
    emit(AccountState.loadSuccess(updatedAccount));
  }
}
