import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart';
import 'package:valkyrie_app/application/account/update_account/update_account_bloc.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/account/account_form.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateAccountBloc>(),
      child: BlocListener<UpdateAccountBloc, UpdateAccountState>(
        listener: (context, state) => {
          state.saveFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
              (failure) {
                showError(
                  message: failure.maybeMap(
                    badRequest: (value) => value.message,
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(context);
              },
              (account) {
                showSuccess(message: "Successfully updated your account")
                    .show(context);
                context.read<AccountCubit>().updateAccount(account);
              },
            ),
          ),
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("User Settings"),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context
                      .read<AuthStatusBloc>()
                      .add(const AuthStatusEvent.signedOut());
                },
              ),
            ],
          ),
          body: AccountForm(),
        ),
      ),
    );
  }
}
