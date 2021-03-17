import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/application/auth/login_form/login_form_bloc.dart';
import 'package:valkyrie_app/presentation/auth/forgot_password_screen.dart';
import 'package:valkyrie_app/presentation/auth/forms/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/common/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext _) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) {
            FlushBarCreator.showError(
              message: failure.maybeMap(
                invalidCredentials: (_) => "Invalid Credentials",
                orElse: () => "Server Error. Try again later.",
              ),
            ).show(context);
          },
          (_) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/home', (route) => false);

            context
                .read<AuthStatusBloc>()
                .add(const AuthStatusEvent.authCheckRequested());
          },
        ),
      );
    }, builder: (context, state) {
      return Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: FormWrapper(
          children: [
            const Text(
              "Welcome back!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "We're so exited to see you again!",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              style: const TextStyle(color: Colors.white, fontSize: 20),
              autocorrect: false,
              textInputAction: TextInputAction.next,
              onChanged: (value) => context
                  .read<LoginFormBloc>()
                  .add(LoginFormEvent.emailChanged(value)),
              validator: (_) =>
                  context.read<LoginFormBloc>().state.emailAddress.value.fold(
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
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              textInputAction: TextInputAction.done,
              style: const TextStyle(fontSize: 20),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => context
                  .read<LoginFormBloc>()
                  .add(LoginFormEvent.passwordChanged(value)),
              validator: (_) =>
                  context.read<LoginFormBloc>().state.password.value.fold(
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ThemeColors.appBackground,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => ForgotPasswordScreen(),
                  ),
                );
              },
              child: const Text(
                "Forgot your password?",
                style: TextStyle(
                  color: ThemeColors.themeBlue,
                  fontSize: 15,
                ),
                textAlign: TextAlign.start,
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
                          .read<LoginFormBloc>()
                          .add(const LoginFormEvent.loginPressed());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: const Text(
                        "Login",
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
      );
    });
  }
}
