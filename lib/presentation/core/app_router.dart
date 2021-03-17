import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/auth/login_screen.dart';
import 'package:valkyrie_app/presentation/auth/register_screen.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/home/account/account_screen.dart';
import 'package:valkyrie_app/presentation/home/account/change_password_screen.dart';
import 'package:valkyrie_app/presentation/home/home_screen.dart';
import 'package:valkyrie_app/presentation/splash/splash_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashPage(),
        );
      case '/auth':
        return MaterialPageRoute(
          builder: (_) => StartUpScreen(),
        );
      case '/login':
        return SlideTransitionRoute(
          page: LoginScreen(),
        );
      case '/register':
        return SlideTransitionRoute(
          page: RegisterScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case '/account':
        return MaterialPageRoute(
          builder: (_) => AccountScreen(),
        );
      case '/change-password':
        return MaterialPageRoute(
          builder: (_) => ChangePasswordScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => SplashPage(),
        );
    }
  }
}

class SlideTransitionRoute extends PageRouteBuilder {
  final Widget page;
  SlideTransitionRoute({required this.page})
      : super(
          transitionDuration: const Duration(milliseconds: 225),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
