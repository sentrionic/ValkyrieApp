import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/forgot_password/forgot_password_screen.dart';
import 'package:valkyrie_app/presentation/auth/login/login_screen.dart';
import 'package:valkyrie_app/presentation/auth/register/register_screen.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/open_url_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/display_screens/photo_view_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/display_screens/web_view_screen.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/change_password/change_password_screen.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';
import 'package:valkyrie_app/presentation/splash/splash_page.dart';

import 'screen_arguments/guild_screen_arguments.dart';
import 'screen_transitions/fade_transition_route.dart';
import 'screen_transitions/slide_transition_route.dart';

class AppRouter {
  final _guildBloc = getIt<GuildListCubit>();
  final _currentChannelCubit = getIt<CurrentChannelCubit>();
  final _currentGuildCubit = getIt<CurrentGuildCubit>();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashPage.routeName:
        return FadeTransitionRoute(
          page: SplashPage(),
        );
      case StartUpScreen.routeName:
        return FadeTransitionRoute(
          page: StartUpScreen(),
        );
      case LoginScreen.routeName:
        return SlideTransitionRoute(
          page: LoginScreen(),
        );
      case RegisterScreen.routeName:
        return SlideTransitionRoute(
          page: RegisterScreen(),
        );
      case ForgotPasswordScreen.routeName:
        return SlideTransitionRoute(
          page: ForgotPasswordScreen(),
        );
      case HomeScreen.routeName:
        return FadeTransitionRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(
                value: _guildBloc..getGuilds(),
              ),
              BlocProvider.value(value: _currentGuildCubit),
            ],
            child: HomeScreen(),
          ),
        );
      case ChangePasswordScreen.routeName:
        return SlideTransitionRoute(
          page: ChangePasswordScreen(),
        );
      case GuildScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return FadeTransitionRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(value: _guildBloc),
              BlocProvider.value(value: _currentGuildCubit),
            ],
            child: GuildScreen(guild: args.guild),
          ),
        );
      case WebViewScreen.routeName:
        final OpenUrlArguments args = settings.arguments! as OpenUrlArguments;
        return SlideTransitionRoute(
          page: WebViewScreen(
            url: args.url,
            filename: args.filename,
          ),
        );
      case PhotoViewScreen.routeName:
        final OpenUrlArguments args = settings.arguments! as OpenUrlArguments;
        return SlideTransitionRoute(
          page: PhotoViewScreen(
            url: args.url,
            filename: args.filename,
          ),
        );
      default:
        return FadeTransitionRoute(
          page: SplashPage(),
        );
    }
  }
}
