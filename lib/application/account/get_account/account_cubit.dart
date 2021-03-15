import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';

part 'account_state.dart';
part 'account_cubit.freezed.dart';

@injectable
class AccountCubit extends Cubit<AccountState> {
  final IAccountRepository _repository;

  AccountCubit(this._repository) : super(const AccountState.initial());

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

  Future<void> updateAccount(Account updatedAccount) async {
    emit(AccountState.loadSuccess(updatedAccount));
  }
}
