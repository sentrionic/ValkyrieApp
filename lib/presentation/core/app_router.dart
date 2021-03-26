import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/login_screen.dart';
import 'package:valkyrie_app/presentation/auth/register_screen.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/guild/guild_screen.dart';
import 'package:valkyrie_app/presentation/home/account/account_screen.dart';
import 'package:valkyrie_app/presentation/home/account/change_password_screen.dart';
import 'package:valkyrie_app/presentation/home/home_screen.dart';
import 'package:valkyrie_app/presentation/splash/splash_page.dart';

class AppRouter {
  final _guildBloc = getIt<GuildListCubit>();
  final _currentChannelCubit = getIt<CurrentChannelCubit>();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return FadeRoute(
          page: SplashPage(),
        );
      case '/auth':
        return FadeRoute(
          page: StartUpScreen(),
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
        return FadeRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(
                value: _guildBloc..getGuilds(),
              ),
            ],
            child: HomeScreen(),
          ),
        );
      case '/account':
        return MaterialPageRoute(
          builder: (_) => AccountScreen(),
        );
      case '/change-password':
        return MaterialPageRoute(
          builder: (_) => ChangePasswordScreen(),
        );
      case '/guild':
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return FadeRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(value: _guildBloc),
            ],
            child: GuildScreen(guild: args.guild),
          ),
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

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
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
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
