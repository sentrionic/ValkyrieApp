// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/change_password/change_password_cubit.dart' as _i48;
import 'application/account/get_account/account_cubit.dart' as _i43;
import 'application/account/update_account/update_account_bloc.dart' as _i40;
import 'application/auth/auth_status/auth_status_bloc.dart' as _i45;
import 'application/auth/forgot_password/forgot_password_cubit.dart' as _i62;
import 'application/auth/login_form/login_form_bloc.dart' as _i31;
import 'application/auth/register_form/register_form_bloc.dart' as _i35;
import 'application/channels/channel_list/channel_list_cubit.dart' as _i49;
import 'application/channels/create_channel/create_channel_cubit.dart' as _i51;
import 'application/channels/current/current_channel_cubit.dart' as _i3;
import 'application/channels/currently_typing/currently_typing_cubit.dart'
    as _i6;
import 'application/channels/delete_channel/delete_channel_cubit.dart' as _i56;
import 'application/channels/edit_channel/edit_channel_cubit.dart' as _i59;
import 'application/channels/get_private_channel_members/get_private_channel_members_cubit.dart'
    as _i66;
import 'application/dms/close_dm/close_dm_cubit.dart' as _i50;
import 'application/dms/current/current_dm_cubit.dart' as _i4;
import 'application/dms/dm_list/dm_list_cubit.dart' as _i54;
import 'application/dms/start_dm/start_dm_cubit.dart' as _i38;
import 'application/friends/accept_request/accept_request_cubit.dart' as _i42;
import 'application/friends/add_friend/add_friend_cubit.dart' as _i44;
import 'application/friends/decline_request/decline_request_cubit.dart' as _i55;
import 'application/friends/get_friends/get_friends_cubit.dart' as _i64;
import 'application/friends/get_requests/get_requests_cubit.dart' as _i67;
import 'application/friends/remove_friend/remove_friend_cubit.dart' as _i36;
import 'application/friends/send_friend_request/send_friend_request_cubit.dart'
    as _i37;
import 'application/guilds/create_guild/create_guild_cubit.dart' as _i52;
import 'application/guilds/current/current_guild_cubit.dart' as _i5;
import 'application/guilds/delete_guild/delete_guild_cubit.dart' as _i57;
import 'application/guilds/edit_guild/edit_guild_cubit.dart' as _i60;
import 'application/guilds/get_appearance/get_appearance_cubit.dart' as _i63;
import 'application/guilds/get_invite_link/get_invite_link_cubit.dart' as _i65;
import 'application/guilds/guild_list/guild_list_cubit.dart' as _i68;
import 'application/guilds/invalidate_invites/invalidate_invites_cubit.dart'
    as _i28;
import 'application/guilds/join_guild/join_guild_cubit.dart' as _i29;
import 'application/guilds/leave_guild/leave_guild_cubit.dart' as _i30;
import 'application/members/ban_list/ban_list_cubit.dart' as _i46;
import 'application/members/change_appearance/change_appearance_cubit.dart'
    as _i47;
import 'application/members/member_list/member_list_cubit.dart' as _i32;
import 'application/members/moderate_member/moderate_member_cubit.dart' as _i34;
import 'application/members/unban_user/unban_user_cubit.dart' as _i39;
import 'application/messages/create_message/create_message_cubit.dart' as _i53;
import 'application/messages/delete_message/delete_message_cubit.dart' as _i58;
import 'application/messages/download_image/download_image_cubit.dart' as _i8;
import 'application/messages/edit_message/edit_message_cubit.dart' as _i61;
import 'application/messages/get_messages/messages_cubit.dart' as _i33;
import 'application/messages/upload_image/upload_image_cubit.dart' as _i41;
import 'application/notifications/dm_notifications_cubit.dart' as _i7;
import 'application/notifications/notifications_cubit.dart' as _i9;
import 'application/notifications/request_notifications_cubit.dart' as _i10;
import 'domain/account/i_account_repository.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i14;
import 'domain/channels/i_channel_repository.dart' as _i16;
import 'domain/dms/i_dm_repository.dart' as _i18;
import 'domain/friends/i_friend_repository.dart' as _i20;
import 'domain/guilds/i_guild_repository.dart' as _i22;
import 'domain/member/i_member_repository.dart' as _i24;
import 'domain/message/i_message_repository.dart' as _i26;
import 'infrastructure/account/account_repository.dart' as _i13;
import 'infrastructure/auth/auth_facade.dart' as _i15;
import 'infrastructure/channels/channel_repository.dart' as _i17;
import 'infrastructure/core/injectable_module.dart' as _i69;
import 'infrastructure/dms/dm_repository.dart' as _i19;
import 'infrastructure/friends/friend_repository.dart' as _i21;
import 'infrastructure/guilds/guild_repository.dart' as _i23;
import 'infrastructure/members/member_repository.dart' as _i25;
import 'infrastructure/messages/message_repository.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
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
  gh.factory<String>(() => injectableModule.baseUrl, instanceName: 'BaseUrl');
  gh.factory<String>(() => injectableModule.httpUrl, instanceName: 'HttpUrl');
  gh.factory<String>(() => injectableModule.wsUrl, instanceName: 'WSUrl');
  gh.lazySingleton<_i11.Dio>(
      () => injectableModule.dio(get<String>(instanceName: 'HttpUrl')));
  gh.lazySingleton<_i12.IAccountRepository>(
      () => _i13.AccountRepository(get<_i11.Dio>()));
  gh.lazySingleton<_i14.IAuthFacade>(() => _i15.AuthFacade(get<_i11.Dio>()));
  gh.lazySingleton<_i16.IChannelRepository>(
      () => _i17.ChannelRepository(get<_i11.Dio>()));
  gh.lazySingleton<_i18.IDMRepository>(
      () => _i19.DMRepository(get<_i11.Dio>()));
  gh.lazySingleton<_i20.IFriendRepository>(
      () => _i21.FriendRepository(get<_i11.Dio>()));
  gh.lazySingleton<_i22.IGuildRepository>(
      () => _i23.GuildRepository(get<_i11.Dio>()));
  gh.lazySingleton<_i24.IMemberRepository>(
      () => _i25.MemberRepository(get<_i11.Dio>()));
  gh.lazySingleton<_i26.IMessageRepository>(
      () => _i27.MessageRepository(get<_i11.Dio>()));
  gh.factory<_i28.InvalidateInvitesCubit>(
      () => _i28.InvalidateInvitesCubit(get<_i22.IGuildRepository>()));
  gh.factory<_i29.JoinGuildCubit>(
      () => _i29.JoinGuildCubit(get<_i22.IGuildRepository>()));
  gh.factory<_i30.LeaveGuildCubit>(
      () => _i30.LeaveGuildCubit(get<_i22.IGuildRepository>()));
  gh.factory<_i31.LoginFormBloc>(
      () => _i31.LoginFormBloc(get<_i14.IAuthFacade>()));
  gh.factory<_i32.MemberListCubit>(
      () => _i32.MemberListCubit(get<_i24.IMemberRepository>()));
  gh.factory<_i33.MessagesCubit>(
      () => _i33.MessagesCubit(get<_i26.IMessageRepository>()));
  gh.factory<_i34.ModerateMemberCubit>(
      () => _i34.ModerateMemberCubit(get<_i24.IMemberRepository>()));
  gh.factory<_i35.RegisterFormBloc>(
      () => _i35.RegisterFormBloc(get<_i14.IAuthFacade>()));
  gh.factory<_i36.RemoveFriendCubit>(
      () => _i36.RemoveFriendCubit(get<_i20.IFriendRepository>()));
  gh.factory<_i37.SendFriendRequestCubit>(
      () => _i37.SendFriendRequestCubit(get<_i20.IFriendRepository>()));
  gh.factory<_i38.StartDMCubit>(
      () => _i38.StartDMCubit(get<_i18.IDMRepository>()));
  gh.factory<_i39.UnbanUserCubit>(
      () => _i39.UnbanUserCubit(get<_i24.IMemberRepository>()));
  gh.factory<_i40.UpdateAccountBloc>(
      () => _i40.UpdateAccountBloc(get<_i12.IAccountRepository>()));
  gh.factory<_i41.UploadImageCubit>(
      () => _i41.UploadImageCubit(get<_i26.IMessageRepository>()));
  gh.factory<_i42.AcceptRequestCubit>(
      () => _i42.AcceptRequestCubit(get<_i20.IFriendRepository>()));
  gh.factory<_i43.AccountCubit>(
      () => _i43.AccountCubit(get<_i12.IAccountRepository>()));
  gh.factory<_i44.AddFriendCubit>(
      () => _i44.AddFriendCubit(get<_i20.IFriendRepository>()));
  gh.factory<_i45.AuthStatusBloc>(
      () => _i45.AuthStatusBloc(get<_i14.IAuthFacade>()));
  gh.factory<_i46.BanListCubit>(
      () => _i46.BanListCubit(get<_i24.IMemberRepository>()));
  gh.factory<_i47.ChangeAppearanceCubit>(
      () => _i47.ChangeAppearanceCubit(get<_i24.IMemberRepository>()));
  gh.factory<_i48.ChangePasswordCubit>(
      () => _i48.ChangePasswordCubit(get<_i14.IAuthFacade>()));
  gh.factory<_i49.ChannelListCubit>(
      () => _i49.ChannelListCubit(get<_i16.IChannelRepository>()));
  gh.factory<_i50.CloseDMCubit>(
      () => _i50.CloseDMCubit(get<_i18.IDMRepository>()));
  gh.factory<_i51.CreateChannelCubit>(
      () => _i51.CreateChannelCubit(get<_i16.IChannelRepository>()));
  gh.factory<_i52.CreateGuildCubit>(
      () => _i52.CreateGuildCubit(get<_i22.IGuildRepository>()));
  gh.factory<_i53.CreateMessageCubit>(
      () => _i53.CreateMessageCubit(get<_i26.IMessageRepository>()));
  gh.factory<_i54.DMListCubit>(
      () => _i54.DMListCubit(get<_i18.IDMRepository>()));
  gh.factory<_i55.DeclineRequestCubit>(
      () => _i55.DeclineRequestCubit(get<_i20.IFriendRepository>()));
  gh.factory<_i56.DeleteChannelCubit>(
      () => _i56.DeleteChannelCubit(get<_i16.IChannelRepository>()));
  gh.factory<_i57.DeleteGuildCubit>(
      () => _i57.DeleteGuildCubit(get<_i22.IGuildRepository>()));
  gh.factory<_i58.DeleteMessageCubit>(
      () => _i58.DeleteMessageCubit(get<_i26.IMessageRepository>()));
  gh.factory<_i59.EditChannelCubit>(
      () => _i59.EditChannelCubit(get<_i16.IChannelRepository>()));
  gh.factory<_i60.EditGuildCubit>(
      () => _i60.EditGuildCubit(get<_i22.IGuildRepository>()));
  gh.factory<_i61.EditMessageCubit>(
      () => _i61.EditMessageCubit(get<_i26.IMessageRepository>()));
  gh.factory<_i62.ForgotPasswordCubit>(
      () => _i62.ForgotPasswordCubit(get<_i14.IAuthFacade>()));
  gh.factory<_i63.GetAppearanceCubit>(
      () => _i63.GetAppearanceCubit(get<_i24.IMemberRepository>()));
  gh.factory<_i64.GetFriendsCubit>(
      () => _i64.GetFriendsCubit(get<_i20.IFriendRepository>()));
  gh.factory<_i65.GetInviteLinkCubit>(
      () => _i65.GetInviteLinkCubit(get<_i22.IGuildRepository>()));
  gh.factory<_i66.GetPrivateChannelMembersCubit>(
      () => _i66.GetPrivateChannelMembersCubit(get<_i16.IChannelRepository>()));
  gh.factory<_i67.GetRequestsCubit>(
      () => _i67.GetRequestsCubit(get<_i20.IFriendRepository>()));
  gh.factory<_i68.GuildListCubit>(
      () => _i68.GuildListCubit(get<_i22.IGuildRepository>()));
  return get;
}

class _$InjectableModule extends _i69.InjectableModule {}
