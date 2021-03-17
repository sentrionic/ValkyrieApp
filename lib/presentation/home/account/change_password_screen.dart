import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/account/change_password/change_password_cubit.dart';
import 'package:valkyrie_app/presentation/home/account/widgets/change_password_form.dart';

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
        child: ChangePasswordForm(),
      ),
    );
  }
}
