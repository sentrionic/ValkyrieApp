import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/forgot_password/forgot_password_screen.dart';
import 'package:valkyrie_app/presentation/auth/login/login_screen.dart';
import 'package:valkyrie_app/presentation/auth/register/register_screen.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/channel_screen_arguments.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/open_url_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/channel_settings/channel_settings_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/create_channel/create_channel_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/edit_guild/edit_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/guild_overview/guild_overview_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/manage_bans/manage_bans_screen.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/add_friend/add_friend_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/add_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/appearance_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/invite_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/screens/photo_view_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/screens/web_view_screen.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/change_password/change_password_screen.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/create_guild/create_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/join_guild/join_guild_screen.dart';
import 'package:valkyrie_app/presentation/splash/splash_page.dart';

import 'screen_arguments/guild_screen_arguments.dart';
import 'screen_transitions/fade_transition_route.dart';
import 'screen_transitions/slide_transition_route.dart';

class AppRouter {
  final _guildBloc = getIt<GuildListCubit>();
  final _currentChannelCubit = getIt<CurrentChannelCubit>();
  final _currentGuildCubit = getIt<CurrentGuildCubit>();
  final _currentDMCubit = getIt<CurrentDMCubit>();
  final _dmListCubit = getIt<DMListCubit>();

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
              BlocProvider.value(value: _guildBloc..getGuilds()),
              BlocProvider.value(value: _currentGuildCubit),
              BlocProvider.value(value: _currentDMCubit),
              BlocProvider.value(value: _dmListCubit..getUserDMs()),
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
              BlocProvider.value(value: _dmListCubit),
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(value: _guildBloc),
              BlocProvider.value(value: _currentGuildCubit),
              BlocProvider.value(value: _currentDMCubit),
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

      case AppearanceScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return SlideTransitionRoute(
          page: AppearanceScreen(guild: args.guild),
        );

      case InviteScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return FadeTransitionRoute(
          page: InviteScreen(guild: args.guild),
        );

      case CreateChannelScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return FadeTransitionRoute(
          page: BlocProvider.value(
            value: _currentChannelCubit,
            child: CreateChannelScreen(guild: args.guild),
          ),
        );

      case ChannelSettingsScreen.routeName:
        final ChannelScreenArguments args =
            settings.arguments! as ChannelScreenArguments;
        return SlideTransitionRoute(
          page: ChannelSettingsScreen(
            channel: args.channel,
            guildId: args.guildId,
          ),
        );

      case AddGuildScreen.routeName:
        return FadeTransitionRoute(
          page: AddGuildScreen(),
        );

      case CreateGuildScreen.routeName:
        return FadeTransitionRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(value: _currentGuildCubit),
              BlocProvider.value(value: _guildBloc),
            ],
            child: CreateGuildScreen(),
          ),
        );

      case JoinGuildScreen.routeName:
        return FadeTransitionRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(value: _currentGuildCubit),
              BlocProvider.value(value: _guildBloc),
            ],
            child: JoinGuildScreen(),
          ),
        );

      case GuildOverviewScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return FadeTransitionRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _guildBloc),
            ],
            child: GuildOverviewScreen(
              guild: args.guild,
            ),
          ),
        );

      case EditGuildScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return SlideTransitionRoute(
          page: BlocProvider.value(
            value: _guildBloc,
            child: EditGuildScreen(
              guild: args.guild,
            ),
          ),
        );

      case ManageBansScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return SlideTransitionRoute(
          page: ManageBansScreen(
            guild: args.guild,
          ),
        );

      case DMScreen.routeName:
        return FadeTransitionRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _dmListCubit),
              BlocProvider.value(value: _currentDMCubit),
              BlocProvider.value(value: _currentChannelCubit),
              BlocProvider.value(value: _currentGuildCubit),
              BlocProvider.value(value: _guildBloc),
            ],
            child: DMScreen(),
          ),
        );

      case AddFriendScreen.routeName:
        return FadeTransitionRoute(
          page: AddFriendScreen(),
        );

      default:
        return FadeTransitionRoute(
          page: SplashPage(),
        );
    }
  }
}
