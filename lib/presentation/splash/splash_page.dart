import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            Navigator.pushReplacementNamed(context, '/home');
          },
          unauthenticated: (_) {
            Navigator.pushReplacementNamed(context, '/auth');
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
