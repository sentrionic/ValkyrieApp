import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/account/change_password/change_password_cubit.dart';
import 'package:valkyrie_app/presentation/common/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

import '../../../injection.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
      ),
      body: BlocProvider(
        create: (context) => getIt<ChangePasswordCubit>(),
        child: BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  FlushBarCreator.showError(
                    message: failure.maybeMap(
                      passwordsDontMatch: (_) =>
                          "The new passwords do not match",
                      badRequest: (value) => value.error,
                      orElse: () => "Server Error.",
                    ),
                  ).show(context);
                },
                (_) {
                  FlushBarCreator.showSuccess(
                    message: "Successfully changed your password",
                  ).show(context);
                },
              ),
            );
          },
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Old Passsword',
                          border: InputBorder.none,
                          fillColor: ThemeColors.inputBackground,
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                          filled: true,
                          errorStyle: TextStyle(color: ThemeColors.errorRed),
                        ),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        autocorrect: false,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        onChanged: (value) => context
                            .read<ChangePasswordCubit>()
                            .oldPasswordChanged(value),
                        validator: (_) => context
                            .read<ChangePasswordCubit>()
                            .state
                            .oldPassword
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'New Password',
                          border: InputBorder.none,
                          fillColor: ThemeColors.inputBackground,
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                          filled: true,
                          errorStyle: TextStyle(color: ThemeColors.errorRed),
                        ),
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(fontSize: 20),
                        autocorrect: false,
                        obscureText: true,
                        onChanged: (value) => context
                            .read<ChangePasswordCubit>()
                            .newPasswordChanged(value),
                        validator: (_) => context
                            .read<ChangePasswordCubit>()
                            .state
                            .newPassword
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Confirm New Password',
                          border: InputBorder.none,
                          fillColor: ThemeColors.inputBackground,
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                          filled: true,
                          errorStyle: TextStyle(color: ThemeColors.errorRed),
                        ),
                        textInputAction: TextInputAction.done,
                        style: const TextStyle(fontSize: 20),
                        autocorrect: false,
                        obscureText: true,
                        onChanged: (value) => context
                            .read<ChangePasswordCubit>()
                            .confirmNewPasswordChanged(value),
                        validator: (_) => context
                            .read<ChangePasswordCubit>()
                            .state
                            .confirmNewPassword
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                passwordsDontMatch: (_) =>
                                    "Passwords don't match",
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: ThemeColors.themeBlue,
                              ),
                              onPressed: () {
                                context
                                    .read<ChangePasswordCubit>()
                                    .submitPasswordChange();
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: const Text(
                                  "Update Password",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (state.isSubmitting) ...[
                        const SizedBox(height: 8),
                        const LinearProgressIndicator(),
                      ]
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
