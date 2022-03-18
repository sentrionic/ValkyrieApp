import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/auth/forgot_password/forgot_password_screen.dart';
import 'package:valkyrie_app/presentation/auth/login/login_screen.dart';
import 'package:valkyrie_app/presentation/auth/register/register_screen.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/channel_screen_arguments.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/open_url_arguments.dart';
import 'package:valkyrie_app/presentation/core/screen_transitions/fade_transition_route.dart';
import 'package:valkyrie_app/presentation/core/screen_transitions/slide_transition_route.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/channel_settings/channel_settings_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/create_channel/create_channel_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/invite_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/appearance_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/edit_guild/edit_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/guild_overview/guild_overview_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/manage_bans/manage_bans_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/screens/photo_view_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/screens/web_view_screen.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/change_password/change_password_screen.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/add_friend/add_friend_screen.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/add_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/create_guild/create_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/join_guild/join_guild_screen.dart';
import 'package:valkyrie_app/presentation/splash/splash_page.dart';

class AppRouter {
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
          page: HomeScreen(),
        );

      case ChangePasswordScreen.routeName:
        return SlideTransitionRoute(
          page: ChangePasswordScreen(),
        );

      case GuildScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return FadeTransitionRoute(
          page: GuildScreen(guild: args.guild),
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
          page: CreateChannelScreen(guild: args.guild),
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
          page: CreateGuildScreen(),
        );

      case JoinGuildScreen.routeName:
        return FadeTransitionRoute(
          page: JoinGuildScreen(),
        );

      case GuildOverviewScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return FadeTransitionRoute(
          page: GuildOverviewScreen(
            guild: args.guild,
          ),
        );

      case EditGuildScreen.routeName:
        final GuildScreenArguments args =
            settings.arguments! as GuildScreenArguments;
        return SlideTransitionRoute(
          page: EditGuildScreen(
            guild: args.guild,
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
          page: DMScreen(),
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
