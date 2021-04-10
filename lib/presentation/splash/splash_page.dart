import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          },
          unauthenticated: (_) {
            Navigator.pushReplacementNamed(context, StartUpScreen.routeName);
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: Image(
            height: 100,
            image: AssetImage('assets/logo.png'),
          ),
        ),
      ),
    );
  }
}
