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

import 'screen_arguments/guild_screen_arguments.dart';
import 'transitions/fade_transition_route.dart';
import 'transitions/slide_transition_route.dart';

class AppRouter {
  final _guildBloc = getIt<GuildListCubit>();
  final _currentChannelCubit = getIt<CurrentChannelCubit>();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return FadeTransitionRoute(
          page: SplashPage(),
        );
      case '/auth':
        return FadeTransitionRoute(
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
        return FadeTransitionRoute(
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
        return FadeTransitionRoute(
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