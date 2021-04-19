// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/change_password/change_password_cubit.dart' as _i43;
import 'application/account/get_account/account_cubit.dart' as _i39;
import 'application/account/update_account/update_account_bloc.dart' as _i36;
import 'application/auth/auth_status/auth_status_bloc.dart' as _i40;
import 'application/auth/forgot_password/forgot_password_cubit.dart' as _i57;
import 'application/auth/login_form/login_form_bloc.dart' as _i27;
import 'application/auth/register_form/register_form_bloc.dart' as _i31;
import 'application/channels/channel_list/channel_list_cubit.dart' as _i44;
import 'application/channels/create_channel/create_channel_cubit.dart' as _i46;
import 'application/channels/current/current_channel_cubit.dart' as _i3;
import 'application/channels/currently_typing/currently_typing_cubit.dart'
    as _i5;
import 'application/channels/delete_channel/delete_channel_cubit.dart' as _i51;
import 'application/channels/edit_channel/edit_channel_cubit.dart' as _i54;
import 'application/channels/get_private_channel_members/get_private_channel_members_cubit.dart'
    as _i61;
import 'application/dms/close_dm/close_dm_cubit.dart' as _i45;
import 'application/dms/dm_list/dm_list_cubit.dart' as _i49;
import 'application/dms/start_dm/start_dm_cubit.dart' as _i34;
import 'application/friends/accept_request/accept_request_cubit.dart' as _i38;
import 'application/friends/decline_request/decline_request_cubit.dart' as _i50;
import 'application/friends/get_friends/get_friends_cubit.dart' as _i59;
import 'application/friends/get_requests/get_requests_cubit.dart' as _i62;
import 'application/friends/remove_friend/remove_friend_cubit.dart' as _i32;
import 'application/friends/send_friend_request/send_friend_request_cubit.dart'
    as _i33;
import 'application/guilds/create_guild/create_guild_cubit.dart' as _i47;
import 'application/guilds/current/current_guild_cubit.dart' as _i4;
import 'application/guilds/delete_guild/delete_guild_cubit.dart' as _i52;
import 'application/guilds/edit_guild/edit_guild_cubit.dart' as _i55;
import 'application/guilds/get_appearance/get_appearance_cubit.dart' as _i58;
import 'application/guilds/get_invite_link/get_invite_link_cubit.dart' as _i60;
import 'application/guilds/guild_list/guild_list_cubit.dart' as _i63;
import 'application/guilds/invalidate_invites/invalidate_invites_cubit.dart'
    as _i24;
import 'application/guilds/join_guild/join_guild_cubit.dart' as _i25;
import 'application/guilds/leave_guild/leave_guild_cubit.dart' as _i26;
import 'application/members/ban_list/ban_list_cubit.dart' as _i41;
import 'application/members/change_appearance/change_appearance_cubit.dart'
    as _i42;
import 'application/members/member_list/member_list_cubit.dart' as _i28;
import 'application/members/moderate_member/moderate_member_cubit.dart' as _i30;
import 'application/members/unban_user/unban_user_cubit.dart' as _i35;
import 'application/messages/create_message/create_message_cubit.dart' as _i48;
import 'application/messages/delete_message/delete_message_cubit.dart' as _i53;
import 'application/messages/download_image/download_image_cubit.dart' as _i6;
import 'application/messages/edit_message/edit_message_cubit.dart' as _i56;
import 'application/messages/get_messages/messages_cubit.dart' as _i29;
import 'application/messages/upload_image/upload_image_cubit.dart' as _i37;
import 'domain/account/i_account_repository.dart' as _i8;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/channels/i_channel_repository.dart' as _i12;
import 'domain/dms/i_dm_repository.dart' as _i14;
import 'domain/friends/i_friend_repository.dart' as _i16;
import 'domain/guilds/i_guild_repository.dart' as _i18;
import 'domain/member/i_member_repository.dart' as _i20;
import 'domain/message/i_message_repository.dart' as _i22;
import 'infrastructure/account/account_repository.dart' as _i9;
import 'infrastructure/auth/auth_facade.dart' as _i11;
import 'infrastructure/channels/channel_repository.dart' as _i13;
import 'infrastructure/core/injectable_module.dart' as _i64;
import 'infrastructure/dms/dm_repository.dart' as _i15;
import 'infrastructure/friends/friend_repository.dart' as _i17;
import 'infrastructure/guilds/guild_repository.dart' as _i19;
import 'infrastructure/members/member_repository.dart' as _i21;
import 'infrastructure/messages/message_repository.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.CurrentChannelCubit>(() => _i3.CurrentChannelCubit());
  gh.factory<_i4.CurrentGuildCubit>(() => _i4.CurrentGuildCubit());
  gh.factory<_i5.CurrentlyTypingCubit>(() => _i5.CurrentlyTypingCubit());
  gh.factory<_i6.DownloadImageCubit>(() => _i6.DownloadImageCubit());
  gh.factory<String>(() => injectableModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i7.Dio>(
      () => injectableModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i8.IAccountRepository>(
      () => _i9.AccountRepository(get<_i7.Dio>()));
  gh.lazySingleton<_i10.IAuthFacade>(() => _i11.AuthFacade(get<_i7.Dio>()));
  gh.lazySingleton<_i12.IChannelRepository>(
      () => _i13.ChannelRepository(get<_i7.Dio>()));
  gh.lazySingleton<_i14.IDMRepository>(() => _i15.DMRepository(get<_i7.Dio>()));
  gh.lazySingleton<_i16.IFriendRepository>(
      () => _i17.FriendRepository(get<_i7.Dio>()));
  gh.lazySingleton<_i18.IGuildRepository>(
      () => _i19.GuildRepository(get<_i7.Dio>()));
  gh.lazySingleton<_i20.IMemberRepository>(
      () => _i21.MemberRepository(get<_i7.Dio>()));
  gh.lazySingleton<_i22.IMessageRepository>(
      () => _i23.MessageRepository(get<_i7.Dio>()));
  gh.factory<_i24.InvalidateInvitesCubit>(
      () => _i24.InvalidateInvitesCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i25.JoinGuildCubit>(
      () => _i25.JoinGuildCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i26.LeaveGuildCubit>(
      () => _i26.LeaveGuildCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i27.LoginFormBloc>(
      () => _i27.LoginFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i28.MemberListCubit>(
      () => _i28.MemberListCubit(get<_i20.IMemberRepository>()));
  gh.factory<_i29.MessagesCubit>(
      () => _i29.MessagesCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i30.ModerateMemberCubit>(
      () => _i30.ModerateMemberCubit(get<_i20.IMemberRepository>()));
  gh.factory<_i31.RegisterFormBloc>(
      () => _i31.RegisterFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i32.RemoveFriendCubit>(
      () => _i32.RemoveFriendCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i33.SendFriendRequestCubit>(
      () => _i33.SendFriendRequestCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i34.StartDMCubit>(
      () => _i34.StartDMCubit(get<_i14.IDMRepository>()));
  gh.factory<_i35.UnbanUserCubit>(
      () => _i35.UnbanUserCubit(get<_i20.IMemberRepository>()));
  gh.factory<_i36.UpdateAccountBloc>(
      () => _i36.UpdateAccountBloc(get<_i8.IAccountRepository>()));
  gh.factory<_i37.UploadImageCubit>(
      () => _i37.UploadImageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i38.AcceptRequestCubit>(
      () => _i38.AcceptRequestCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i39.AccountCubit>(
      () => _i39.AccountCubit(get<_i8.IAccountRepository>()));
  gh.factory<_i40.AuthStatusBloc>(
      () => _i40.AuthStatusBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i41.BanListCubit>(
      () => _i41.BanListCubit(get<_i20.IMemberRepository>()));
  gh.factory<_i42.ChangeAppearanceCubit>(
      () => _i42.ChangeAppearanceCubit(get<_i20.IMemberRepository>()));
  gh.factory<_i43.ChangePasswordCubit>(
      () => _i43.ChangePasswordCubit(get<_i10.IAuthFacade>()));
  gh.factory<_i44.ChannelListCubit>(
      () => _i44.ChannelListCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i45.CloseDMCubit>(
      () => _i45.CloseDMCubit(get<_i14.IDMRepository>()));
  gh.factory<_i46.CreateChannelCubit>(
      () => _i46.CreateChannelCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i47.CreateGuildCubit>(
      () => _i47.CreateGuildCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i48.CreateMessageCubit>(
      () => _i48.CreateMessageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i49.DMListCubit>(
      () => _i49.DMListCubit(get<_i14.IDMRepository>()));
  gh.factory<_i50.DeclineRequestCubit>(
      () => _i50.DeclineRequestCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i51.DeleteChannelCubit>(
      () => _i51.DeleteChannelCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i52.DeleteGuildCubit>(
      () => _i52.DeleteGuildCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i53.DeleteMessageCubit>(
      () => _i53.DeleteMessageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i54.EditChannelCubit>(
      () => _i54.EditChannelCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i55.EditGuildCubit>(
      () => _i55.EditGuildCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i56.EditMessageCubit>(
      () => _i56.EditMessageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i57.ForgotPasswordCubit>(
      () => _i57.ForgotPasswordCubit(get<_i10.IAuthFacade>()));
  gh.factory<_i58.GetAppearanceCubit>(
      () => _i58.GetAppearanceCubit(get<_i20.IMemberRepository>()));
  gh.factory<_i59.GetFriendsCubit>(
      () => _i59.GetFriendsCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i60.GetInviteLinkCubit>(
      () => _i60.GetInviteLinkCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i61.GetPrivateChannelMembersCubit>(
      () => _i61.GetPrivateChannelMembersCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i62.GetRequestsCubit>(
      () => _i62.GetRequestsCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i63.GuildListCubit>(
      () => _i63.GuildListCubit(get<_i18.IGuildRepository>()));
  return get;
}

class _$InjectableModule extends _i64.InjectableModule {}
