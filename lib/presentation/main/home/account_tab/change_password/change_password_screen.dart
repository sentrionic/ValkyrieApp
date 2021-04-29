import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/account/change_password/change_password_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/change_password/change_password_form.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const routeName = '/change-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
      ),
      body: BlocProvider(
        create: (context) => getIt<ChangePasswordCubit>(),
        child: ChangePasswordForm(),
      ),
    );
  }
}
