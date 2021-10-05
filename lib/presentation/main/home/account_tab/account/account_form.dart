import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart';
import 'package:valkyrie_app/application/account/update_account/update_account_bloc.dart';
import 'package:valkyrie_app/presentation/common/widgets/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/account/avatar_widget.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/change_password/change_password_screen.dart';

class AccountForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (account) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      color: ThemeColors.dmBackground,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          AccountAvatar(image: account.image),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            account.username.getOrCrash(),
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: ThemeColors.accountForm,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _key,
                        autovalidateMode: context
                                .watch<UpdateAccountBloc>()
                                .state
                                .showErrorMessages
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "ACCOUNT INFORMATION",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white38,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Username',
                              ),
                              initialValue: account.username.getOrCrash(),
                              onChanged: (value) => context
                                  .read<UpdateAccountBloc>()
                                  .add(
                                    UpdateAccountEvent.usernameChanged(value),
                                  ),
                              onSaved: (value) => context
                                  .read<UpdateAccountBloc>()
                                  .add(
                                    UpdateAccountEvent.usernameChanged(value!),
                                  ),
                              validator: (_) => context
                                  .read<UpdateAccountBloc>()
                                  .state
                                  .username
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      invalidUsername: (_) =>
                                          'Username must be at least 3 charactesr long',
                                      orElse: () => null,
                                    ),
                                    (r) => null,
                                  ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Email',
                              ),
                              initialValue: account.email.getOrCrash(),
                              onChanged: (value) =>
                                  context.read<UpdateAccountBloc>().add(
                                        UpdateAccountEvent.emailChanged(value),
                                      ),
                              onSaved: (value) =>
                                  context.read<UpdateAccountBloc>().add(
                                        UpdateAccountEvent.emailChanged(value!),
                                      ),
                              validator: (_) => context
                                  .read<UpdateAccountBloc>()
                                  .state
                                  .emailAddress
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      invalidEmail: (_) =>
                                          'Must be a valid email address',
                                      orElse: () => null,
                                    ),
                                    (r) => null,
                                  ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: ThemeColors.themeBlue,
                                    ),
                                    onPressed: () {
                                      FocusScope.of(context).unfocus();
                                      _key.currentState?.save();
                                      context.read<UpdateAccountBloc>().add(
                                            const UpdateAccountEvent.saved(),
                                          );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                      ),
                                      child: const Text(
                                        "Save Changes",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        ChangePasswordScreen.routeName,
                                      );
                                    },
                                    child: const Text(
                                      "Change Password",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          loadFailure: (failure) => const Center(
            child: Text(
              "Something went wrong.\nTry loggin out and loggin back in.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          orElse: () => CenterLoadingIndicator(),
        );
      },
    );
  }
}
