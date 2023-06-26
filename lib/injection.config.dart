// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:valkyrie_app/application/account/change_password/change_password_cubit.dart'
    as _i48;
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart'
    as _i43;
import 'package:valkyrie_app/application/account/update_account/update_account_bloc.dart'
    as _i40;
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart'
    as _i45;
import 'package:valkyrie_app/application/auth/forgot_password/forgot_password_cubit.dart'
    as _i62;
import 'package:valkyrie_app/application/auth/login_form/login_form_bloc.dart'
    as _i31;
import 'package:valkyrie_app/application/auth/register_form/register_form_bloc.dart'
    as _i35;
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart'
    as _i49;
import 'package:valkyrie_app/application/channels/create_channel/create_channel_cubit.dart'
    as _i51;
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart'
    as _i3;
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart'
    as _i6;
import 'package:valkyrie_app/application/channels/delete_channel/delete_channel_cubit.dart'
    as _i56;
import 'package:valkyrie_app/application/channels/edit_channel/edit_channel_cubit.dart'
    as _i59;
import 'package:valkyrie_app/application/channels/get_private_channel_members/get_private_channel_members_cubit.dart'
    as _i66;
import 'package:valkyrie_app/application/dms/close_dm/close_dm_cubit.dart'
    as _i50;
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart'
    as _i4;
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart'
    as _i54;
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart'
    as _i38;
import 'package:valkyrie_app/application/friends/accept_request/accept_request_cubit.dart'
    as _i42;
import 'package:valkyrie_app/application/friends/add_friend/add_friend_cubit.dart'
    as _i44;
import 'package:valkyrie_app/application/friends/decline_request/decline_request_cubit.dart'
    as _i55;
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart'
    as _i64;
import 'package:valkyrie_app/application/friends/get_requests/get_requests_cubit.dart'
    as _i67;
import 'package:valkyrie_app/application/friends/remove_friend/remove_friend_cubit.dart'
    as _i36;
import 'package:valkyrie_app/application/friends/send_friend_request/send_friend_request_cubit.dart'
    as _i37;
import 'package:valkyrie_app/application/guilds/create_guild/create_guild_cubit.dart'
    as _i52;
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart'
    as _i5;
import 'package:valkyrie_app/application/guilds/delete_guild/delete_guild_cubit.dart'
    as _i57;
import 'package:valkyrie_app/application/guilds/edit_guild/edit_guild_cubit.dart'
    as _i60;
import 'package:valkyrie_app/application/guilds/get_appearance/get_appearance_cubit.dart'
    as _i63;
import 'package:valkyrie_app/application/guilds/get_invite_link/get_invite_link_cubit.dart'
    as _i65;
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart'
    as _i68;
import 'package:valkyrie_app/application/guilds/invalidate_invites/invalidate_invites_cubit.dart'
    as _i28;
import 'package:valkyrie_app/application/guilds/join_guild/join_guild_cubit.dart'
    as _i29;
import 'package:valkyrie_app/application/guilds/leave_guild/leave_guild_cubit.dart'
    as _i30;
import 'package:valkyrie_app/application/members/ban_list/ban_list_cubit.dart'
    as _i46;
import 'package:valkyrie_app/application/members/change_appearance/change_appearance_cubit.dart'
    as _i47;
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart'
    as _i32;
import 'package:valkyrie_app/application/members/moderate_member/moderate_member_cubit.dart'
    as _i34;
import 'package:valkyrie_app/application/members/unban_user/unban_user_cubit.dart'
    as _i39;
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart'
    as _i53;
import 'package:valkyrie_app/application/messages/delete_message/delete_message_cubit.dart'
    as _i58;
import 'package:valkyrie_app/application/messages/download_image/download_image_cubit.dart'
    as _i8;
import 'package:valkyrie_app/application/messages/edit_message/edit_message_cubit.dart'
    as _i61;
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart'
    as _i33;
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart'
    as _i41;
import 'package:valkyrie_app/application/notifications/dm_notifications_cubit.dart'
    as _i7;
import 'package:valkyrie_app/application/notifications/notifications_cubit.dart'
    as _i9;
import 'package:valkyrie_app/application/notifications/request_notifications_cubit.dart'
    as _i10;
import 'package:valkyrie_app/domain/account/i_account_repository.dart' as _i12;
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart' as _i14;
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart' as _i16;
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart' as _i18;
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart' as _i20;
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart' as _i22;
import 'package:valkyrie_app/domain/member/i_member_repository.dart' as _i24;
import 'package:valkyrie_app/domain/message/i_message_repository.dart' as _i26;
import 'package:valkyrie_app/infrastructure/account/account_repository.dart'
    as _i13;
import 'package:valkyrie_app/infrastructure/auth/auth_facade.dart' as _i15;
import 'package:valkyrie_app/infrastructure/channels/channel_repository.dart'
    as _i17;
import 'package:valkyrie_app/infrastructure/core/injectable_module.dart'
    as _i69;
import 'package:valkyrie_app/infrastructure/dms/dm_repository.dart' as _i19;
import 'package:valkyrie_app/infrastructure/friends/friend_repository.dart'
    as _i21;
import 'package:valkyrie_app/infrastructure/guilds/guild_repository.dart'
    as _i23;
import 'package:valkyrie_app/infrastructure/members/member_repository.dart'
    as _i25;
import 'package:valkyrie_app/infrastructure/messages/message_repository.dart'
    as _i27;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i3.CurrentChannelCubit>(() => _i3.CurrentChannelCubit());
    gh.factory<_i4.CurrentDMCubit>(() => _i4.CurrentDMCubit());
    gh.factory<_i5.CurrentGuildCubit>(() => _i5.CurrentGuildCubit());
    gh.factory<_i6.CurrentlyTypingCubit>(() => _i6.CurrentlyTypingCubit());
    gh.factory<_i7.DMNotificationsCubit>(() => _i7.DMNotificationsCubit());
    gh.factory<_i8.DownloadImageCubit>(() => _i8.DownloadImageCubit());
    gh.factory<_i9.NotificationsCubit>(() => _i9.NotificationsCubit());
    gh.factory<_i10.RequestNotificationsCubit>(
        () => _i10.RequestNotificationsCubit());
    gh.factory<String>(
      () => injectableModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<String>(
      () => injectableModule.httpUrl,
      instanceName: 'HttpUrl',
    );
    gh.factory<String>(
      () => injectableModule.wsUrl,
      instanceName: 'WSUrl',
    );
    gh.lazySingleton<_i11.Dio>(
        () => injectableModule.dio(gh<String>(instanceName: 'HttpUrl')));
    gh.lazySingleton<_i12.IAccountRepository>(
        () => _i13.AccountRepository(gh<_i11.Dio>()));
    gh.lazySingleton<_i14.IAuthFacade>(() => _i15.AuthFacade(gh<_i11.Dio>()));
    gh.lazySingleton<_i16.IChannelRepository>(
        () => _i17.ChannelRepository(gh<_i11.Dio>()));
    gh.lazySingleton<_i18.IDMRepository>(
        () => _i19.DMRepository(gh<_i11.Dio>()));
    gh.lazySingleton<_i20.IFriendRepository>(
        () => _i21.FriendRepository(gh<_i11.Dio>()));
    gh.lazySingleton<_i22.IGuildRepository>(
        () => _i23.GuildRepository(gh<_i11.Dio>()));
    gh.lazySingleton<_i24.IMemberRepository>(
        () => _i25.MemberRepository(gh<_i11.Dio>()));
    gh.lazySingleton<_i26.IMessageRepository>(
        () => _i27.MessageRepository(gh<_i11.Dio>()));
    gh.factory<_i28.InvalidateInvitesCubit>(
        () => _i28.InvalidateInvitesCubit(gh<_i22.IGuildRepository>()));
    gh.factory<_i29.JoinGuildCubit>(
        () => _i29.JoinGuildCubit(gh<_i22.IGuildRepository>()));
    gh.factory<_i30.LeaveGuildCubit>(
        () => _i30.LeaveGuildCubit(gh<_i22.IGuildRepository>()));
    gh.factory<_i31.LoginFormBloc>(
        () => _i31.LoginFormBloc(gh<_i14.IAuthFacade>()));
    gh.factory<_i32.MemberListCubit>(
        () => _i32.MemberListCubit(gh<_i24.IMemberRepository>()));
    gh.factory<_i33.MessagesCubit>(
        () => _i33.MessagesCubit(gh<_i26.IMessageRepository>()));
    gh.factory<_i34.ModerateMemberCubit>(
        () => _i34.ModerateMemberCubit(gh<_i24.IMemberRepository>()));
    gh.factory<_i35.RegisterFormBloc>(
        () => _i35.RegisterFormBloc(gh<_i14.IAuthFacade>()));
    gh.factory<_i36.RemoveFriendCubit>(
        () => _i36.RemoveFriendCubit(gh<_i20.IFriendRepository>()));
    gh.factory<_i37.SendFriendRequestCubit>(
        () => _i37.SendFriendRequestCubit(gh<_i20.IFriendRepository>()));
    gh.factory<_i38.StartDMCubit>(
        () => _i38.StartDMCubit(gh<_i18.IDMRepository>()));
    gh.factory<_i39.UnbanUserCubit>(
        () => _i39.UnbanUserCubit(gh<_i24.IMemberRepository>()));
    gh.factory<_i40.UpdateAccountBloc>(
        () => _i40.UpdateAccountBloc(gh<_i12.IAccountRepository>()));
    gh.factory<_i41.UploadImageCubit>(
        () => _i41.UploadImageCubit(gh<_i26.IMessageRepository>()));
    gh.factory<_i42.AcceptRequestCubit>(
        () => _i42.AcceptRequestCubit(gh<_i20.IFriendRepository>()));
    gh.factory<_i43.AccountCubit>(
        () => _i43.AccountCubit(gh<_i12.IAccountRepository>()));
    gh.factory<_i44.AddFriendCubit>(
        () => _i44.AddFriendCubit(gh<_i20.IFriendRepository>()));
    gh.factory<_i45.AuthStatusBloc>(
        () => _i45.AuthStatusBloc(gh<_i14.IAuthFacade>()));
    gh.factory<_i46.BanListCubit>(
        () => _i46.BanListCubit(gh<_i24.IMemberRepository>()));
    gh.factory<_i47.ChangeAppearanceCubit>(
        () => _i47.ChangeAppearanceCubit(gh<_i24.IMemberRepository>()));
    gh.factory<_i48.ChangePasswordCubit>(
        () => _i48.ChangePasswordCubit(gh<_i14.IAuthFacade>()));
    gh.factory<_i49.ChannelListCubit>(
        () => _i49.ChannelListCubit(gh<_i16.IChannelRepository>()));
    gh.factory<_i50.CloseDMCubit>(
        () => _i50.CloseDMCubit(gh<_i18.IDMRepository>()));
    gh.factory<_i51.CreateChannelCubit>(
        () => _i51.CreateChannelCubit(gh<_i16.IChannelRepository>()));
    gh.factory<_i52.CreateGuildCubit>(
        () => _i52.CreateGuildCubit(gh<_i22.IGuildRepository>()));
    gh.factory<_i53.CreateMessageCubit>(
        () => _i53.CreateMessageCubit(gh<_i26.IMessageRepository>()));
    gh.factory<_i54.DMListCubit>(
        () => _i54.DMListCubit(gh<_i18.IDMRepository>()));
    gh.factory<_i55.DeclineRequestCubit>(
        () => _i55.DeclineRequestCubit(gh<_i20.IFriendRepository>()));
    gh.factory<_i56.DeleteChannelCubit>(
        () => _i56.DeleteChannelCubit(gh<_i16.IChannelRepository>()));
    gh.factory<_i57.DeleteGuildCubit>(
        () => _i57.DeleteGuildCubit(gh<_i22.IGuildRepository>()));
    gh.factory<_i58.DeleteMessageCubit>(
        () => _i58.DeleteMessageCubit(gh<_i26.IMessageRepository>()));
    gh.factory<_i59.EditChannelCubit>(
        () => _i59.EditChannelCubit(gh<_i16.IChannelRepository>()));
    gh.factory<_i60.EditGuildCubit>(
        () => _i60.EditGuildCubit(gh<_i22.IGuildRepository>()));
    gh.factory<_i61.EditMessageCubit>(
        () => _i61.EditMessageCubit(gh<_i26.IMessageRepository>()));
    gh.factory<_i62.ForgotPasswordCubit>(
        () => _i62.ForgotPasswordCubit(gh<_i14.IAuthFacade>()));
    gh.factory<_i63.GetAppearanceCubit>(
        () => _i63.GetAppearanceCubit(gh<_i24.IMemberRepository>()));
    gh.factory<_i64.GetFriendsCubit>(
        () => _i64.GetFriendsCubit(gh<_i20.IFriendRepository>()));
    gh.factory<_i65.GetInviteLinkCubit>(
        () => _i65.GetInviteLinkCubit(gh<_i22.IGuildRepository>()));
    gh.factory<_i66.GetPrivateChannelMembersCubit>(() =>
        _i66.GetPrivateChannelMembersCubit(gh<_i16.IChannelRepository>()));
    gh.factory<_i67.GetRequestsCubit>(
        () => _i67.GetRequestsCubit(gh<_i20.IFriendRepository>()));
    gh.factory<_i68.GuildListCubit>(
        () => _i68.GuildListCubit(gh<_i22.IGuildRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i69.InjectableModule {}
