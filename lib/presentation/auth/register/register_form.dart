import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/register_form/register_form_bloc.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/restart_widget.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext _) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  badRequest: (value) => value.error,
                  orElse: () => "Server Error. Try again later.",
                ),
              ).show(context);
            },
            (_) {
              RestartWidget.restartApp(context);
            },
          ),
        );
      },
      builder: (context, state) {
        return Container(
          color: ThemeColors.appBackground,
          height: double.infinity,
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: FormWrapper(
              children: [
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What should everyone call you?".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => context
                      .read<RegisterFormBloc>()
                      .add(RegisterFormEvent.usernameChanged(value)),
                  validator: (_) => context
                      .read<RegisterFormBloc>()
                      .state
                      .username
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidUsername: (_) => 'Invalid Username',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account Information".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => context
                      .read<RegisterFormBloc>()
                      .add(RegisterFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .read<RegisterFormBloc>()
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
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  textInputAction: TextInputAction.done,
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<RegisterFormBloc>()
                      .add(RegisterFormEvent.passwordChanged(value)),
                  validator: (_) => context
                      .read<RegisterFormBloc>()
                      .state
                      .password
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
                              .read<RegisterFormBloc>()
                              .add(const RegisterFormEvent.registerPressed());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
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
          ),
        );
      },
    );
  }
}
