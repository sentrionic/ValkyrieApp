import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/account/change_password/change_password_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class ChangePasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.appBackground,
      height: double.infinity,
      child: BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                showError(
                  message: failure.maybeMap(
                    passwordsDontMatch: (_) => "The new passwords do not match",
                    badRequest: (value) => value.error,
                    orElse: () => "Server Error.",
                  ),
                ).show(context);
              },
              (_) {
                showSuccess(
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
            child: FormWrapper(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Old Password',
                  ),
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
                  ),
                  textInputAction: TextInputAction.next,
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
                  ),
                  textInputAction: TextInputAction.done,
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
                          passwordsDontMatch: (_) => "Passwords don't match",
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 30,
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
                          context
                              .read<ChangePasswordCubit>()
                              .submitPasswordChange();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: const Text(
                            "Update Password",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(height: 8),
                  const LinearProgressIndicator(
                    color: ThemeColors.themeBlue,
                  ),
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
