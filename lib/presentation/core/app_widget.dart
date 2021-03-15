import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/screens/login_screen.dart';
import 'package:valkyrie_app/presentation/auth/screens/register_screen.dart';
import 'package:valkyrie_app/presentation/auth/screens/start_up_screen.dart';
import 'package:valkyrie_app/presentation/core/app_theme.dart';
import 'package:valkyrie_app/presentation/home/account/account_screen.dart';
import 'package:valkyrie_app/presentation/home/account/change_password_screen.dart';
import 'package:valkyrie_app/presentation/home/home_screen.dart';
import 'package:valkyrie_app/presentation/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthStatusBloc>()
            ..add(
              const AuthStatusEvent.authCheckRequested(),
            ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ValkyrieApp',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashPage(),
          '/auth': (context) => StartUpScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => HomeScreen(),
          '/account': (context) => AccountScreen(),
          '/change-password': (context) => ChangePasswordScreen(),
        },
      ),
    );
  }
}
