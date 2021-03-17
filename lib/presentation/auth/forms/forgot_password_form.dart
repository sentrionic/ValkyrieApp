import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/forgot_password/forgot_password_cubit.dart';
import 'package:valkyrie_app/presentation/auth/forms/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/common/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class ForgotPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
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
          child: FormWrapper(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                style: const TextStyle(color: Colors.white, fontSize: 20),
                autocorrect: false,
                textInputAction: TextInputAction.done,
                onChanged: (value) =>
                    context.read<ForgotPasswordCubit>().emailChanged(value),
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
                        padding: const EdgeInsets.symmetric(vertical: 15),
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
        );
      },
    );
  }
}
