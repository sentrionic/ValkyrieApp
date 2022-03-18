import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/forgot_password/forgot_password_cubit.dart';

import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/forgot_password/forgot_password_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routeName = '/forgot-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: BlocProvider(
        create: (context) => getIt<ForgotPasswordCubit>(),
        child: ForgotPasswordForm(),
      ),
    );
  }
}
