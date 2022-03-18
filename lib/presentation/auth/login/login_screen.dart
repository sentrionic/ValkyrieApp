import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/login_form/login_form_bloc.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/login/login_form.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.appBackground,
      ),
      body: BlocProvider(
        create: (context) => getIt<LoginFormBloc>(),
        child: LoginForm(),
      ),
    );
  }
}
