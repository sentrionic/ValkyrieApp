import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/forgot_password/forgot_password_cubit.dart';
import 'package:valkyrie_app/presentation/common/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

import '../../../injection.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: BlocProvider(
        create: (context) => getIt<ForgotPasswordCubit>(),
        child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  FlushBarCreator.showError(
                    message: failure.maybeMap(
                      orElse: () => "Server Error. Try again later.",
                    ),
                  ).show(context);
                },
                (_) {
                  FlushBarCreator.showSuccess(
                    message:
                        "If an account with that email already exists, we sent you an email",
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
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
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
                        textInputAction: TextInputAction.done,
                        onChanged: (value) => context
                            .read<ForgotPasswordCubit>()
                            .emailChanged(value),
                        validator: (_) => context
                            .read<ForgotPasswordCubit>()
                            .state
                            .emailAddress
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid Email',
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
                                    .read<ForgotPasswordCubit>()
                                    .submitForgotPassword();
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: const Text(
                                  "Send Email",
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
