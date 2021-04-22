// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/change_password/change_password_cubit.dart' as _i45;
import 'application/account/get_account/account_cubit.dart' as _i40;
import 'application/account/update_account/update_account_bloc.dart' as _i37;
import 'application/auth/auth_status/auth_status_bloc.dart' as _i42;
import 'application/auth/forgot_password/forgot_password_cubit.dart' as _i59;
import 'application/auth/login_form/login_form_bloc.dart' as _i28;
import 'application/auth/register_form/register_form_bloc.dart' as _i32;
import 'application/channels/channel_list/channel_list_cubit.dart' as _i46;
import 'application/channels/create_channel/create_channel_cubit.dart' as _i48;
import 'application/channels/current/current_channel_cubit.dart' as _i3;
import 'application/channels/currently_typing/currently_typing_cubit.dart'
    as _i6;
import 'application/channels/delete_channel/delete_channel_cubit.dart' as _i53;
import 'application/channels/edit_channel/edit_channel_cubit.dart' as _i56;
import 'application/channels/get_private_channel_members/get_private_channel_members_cubit.dart'
    as _i63;
import 'application/dms/close_dm/close_dm_cubit.dart' as _i47;
import 'application/dms/current/current_dm_cubit.dart' as _i4;
import 'application/dms/dm_list/dm_list_cubit.dart' as _i51;
import 'application/dms/start_dm/start_dm_cubit.dart' as _i35;
import 'application/friends/accept_request/accept_request_cubit.dart' as _i39;
import 'application/friends/add_friend/add_friend_cubit.dart' as _i41;
import 'application/friends/decline_request/decline_request_cubit.dart' as _i52;
import 'application/friends/get_friends/get_friends_cubit.dart' as _i61;
import 'application/friends/get_requests/get_requests_cubit.dart' as _i64;
import 'application/friends/remove_friend/remove_friend_cubit.dart' as _i33;
import 'application/friends/send_friend_request/send_friend_request_cubit.dart'
    as _i34;
import 'application/guilds/create_guild/create_guild_cubit.dart' as _i49;
import 'application/guilds/current/current_guild_cubit.dart' as _i5;
import 'application/guilds/delete_guild/delete_guild_cubit.dart' as _i54;
import 'application/guilds/edit_guild/edit_guild_cubit.dart' as _i57;
import 'application/guilds/get_appearance/get_appearance_cubit.dart' as _i60;
import 'application/guilds/get_invite_link/get_invite_link_cubit.dart' as _i62;
import 'application/guilds/guild_list/guild_list_cubit.dart' as _i65;
import 'application/guilds/invalidate_invites/invalidate_invites_cubit.dart'
    as _i25;
import 'application/guilds/join_guild/join_guild_cubit.dart' as _i26;
import 'application/guilds/leave_guild/leave_guild_cubit.dart' as _i27;
import 'application/members/ban_list/ban_list_cubit.dart' as _i43;
import 'application/members/change_appearance/change_appearance_cubit.dart'
    as _i44;
import 'application/members/member_list/member_list_cubit.dart' as _i29;
import 'application/members/moderate_member/moderate_member_cubit.dart' as _i31;
import 'application/members/unban_user/unban_user_cubit.dart' as _i36;
import 'application/messages/create_message/create_message_cubit.dart' as _i50;
import 'application/messages/delete_message/delete_message_cubit.dart' as _i55;
import 'application/messages/download_image/download_image_cubit.dart' as _i7;
import 'application/messages/edit_message/edit_message_cubit.dart' as _i58;
import 'application/messages/get_messages/messages_cubit.dart' as _i30;
import 'application/messages/upload_image/upload_image_cubit.dart' as _i38;
import 'domain/account/i_account_repository.dart' as _i9;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'domain/channels/i_channel_repository.dart' as _i13;
import 'domain/dms/i_dm_repository.dart' as _i15;
import 'domain/friends/i_friend_repository.dart' as _i17;
import 'domain/guilds/i_guild_repository.dart' as _i19;
import 'domain/member/i_member_repository.dart' as _i21;
import 'domain/message/i_message_repository.dart' as _i23;
import 'infrastructure/account/account_repository.dart' as _i10;
import 'infrastructure/auth/auth_facade.dart' as _i12;
import 'infrastructure/channels/channel_repository.dart' as _i14;
import 'infrastructure/core/injectable_module.dart' as _i66;
import 'infrastructure/dms/dm_repository.dart' as _i16;
import 'infrastructure/friends/friend_repository.dart' as _i18;
import 'infrastructure/guilds/guild_repository.dart' as _i20;
import 'infrastructure/members/member_repository.dart' as _i22;
import 'infrastructure/messages/message_repository.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i7.DownloadImageCubit>(() => _i7.DownloadImageCubit());
  gh.factory<String>(() => injectableModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i8.Dio>(
      () => injectableModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i9.IAccountRepository>(
      () => _i10.AccountRepository(get<_i8.Dio>()));
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.AuthFacade(get<_i8.Dio>()));
  gh.lazySingleton<_i13.IChannelRepository>(
      () => _i14.ChannelRepository(get<_i8.Dio>()));
  gh.lazySingleton<_i15.IDMRepository>(() => _i16.DMRepository(get<_i8.Dio>()));
  gh.lazySingleton<_i17.IFriendRepository>(
      () => _i18.FriendRepository(get<_i8.Dio>()));
  gh.lazySingleton<_i19.IGuildRepository>(
      () => _i20.GuildRepository(get<_i8.Dio>()));
  gh.lazySingleton<_i21.IMemberRepository>(
      () => _i22.MemberRepository(get<_i8.Dio>()));
  gh.lazySingleton<_i23.IMessageRepository>(
      () => _i24.MessageRepository(get<_i8.Dio>()));
  gh.factory<_i25.InvalidateInvitesCubit>(
      () => _i25.InvalidateInvitesCubit(get<_i19.IGuildRepository>()));
  gh.factory<_i26.JoinGuildCubit>(
      () => _i26.JoinGuildCubit(get<_i19.IGuildRepository>()));
  gh.factory<_i27.LeaveGuildCubit>(
      () => _i27.LeaveGuildCubit(get<_i19.IGuildRepository>()));
  gh.factory<_i28.LoginFormBloc>(
      () => _i28.LoginFormBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i29.MemberListCubit>(
      () => _i29.MemberListCubit(get<_i21.IMemberRepository>()));
  gh.factory<_i30.MessagesCubit>(
      () => _i30.MessagesCubit(get<_i23.IMessageRepository>()));
  gh.factory<_i31.ModerateMemberCubit>(
      () => _i31.ModerateMemberCubit(get<_i21.IMemberRepository>()));
  gh.factory<_i32.RegisterFormBloc>(
      () => _i32.RegisterFormBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i33.RemoveFriendCubit>(
      () => _i33.RemoveFriendCubit(get<_i17.IFriendRepository>()));
  gh.factory<_i34.SendFriendRequestCubit>(
      () => _i34.SendFriendRequestCubit(get<_i17.IFriendRepository>()));
  gh.factory<_i35.StartDMCubit>(
      () => _i35.StartDMCubit(get<_i15.IDMRepository>()));
  gh.factory<_i36.UnbanUserCubit>(
      () => _i36.UnbanUserCubit(get<_i21.IMemberRepository>()));
  gh.factory<_i37.UpdateAccountBloc>(
      () => _i37.UpdateAccountBloc(get<_i9.IAccountRepository>()));
  gh.factory<_i38.UploadImageCubit>(
      () => _i38.UploadImageCubit(get<_i23.IMessageRepository>()));
  gh.factory<_i39.AcceptRequestCubit>(
      () => _i39.AcceptRequestCubit(get<_i17.IFriendRepository>()));
  gh.factory<_i40.AccountCubit>(
      () => _i40.AccountCubit(get<_i9.IAccountRepository>()));
  gh.factory<_i41.AddFriendCubit>(
      () => _i41.AddFriendCubit(get<_i17.IFriendRepository>()));
  gh.factory<_i42.AuthStatusBloc>(
      () => _i42.AuthStatusBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i43.BanListCubit>(
      () => _i43.BanListCubit(get<_i21.IMemberRepository>()));
  gh.factory<_i44.ChangeAppearanceCubit>(
      () => _i44.ChangeAppearanceCubit(get<_i21.IMemberRepository>()));
  gh.factory<_i45.ChangePasswordCubit>(
      () => _i45.ChangePasswordCubit(get<_i11.IAuthFacade>()));
  gh.factory<_i46.ChannelListCubit>(
      () => _i46.ChannelListCubit(get<_i13.IChannelRepository>()));
  gh.factory<_i47.CloseDMCubit>(
      () => _i47.CloseDMCubit(get<_i15.IDMRepository>()));
  gh.factory<_i48.CreateChannelCubit>(
      () => _i48.CreateChannelCubit(get<_i13.IChannelRepository>()));
  gh.factory<_i49.CreateGuildCubit>(
      () => _i49.CreateGuildCubit(get<_i19.IGuildRepository>()));
  gh.factory<_i50.CreateMessageCubit>(
      () => _i50.CreateMessageCubit(get<_i23.IMessageRepository>()));
  gh.factory<_i51.DMListCubit>(
      () => _i51.DMListCubit(get<_i15.IDMRepository>()));
  gh.factory<_i52.DeclineRequestCubit>(
      () => _i52.DeclineRequestCubit(get<_i17.IFriendRepository>()));
  gh.factory<_i53.DeleteChannelCubit>(
      () => _i53.DeleteChannelCubit(get<_i13.IChannelRepository>()));
  gh.factory<_i54.DeleteGuildCubit>(
      () => _i54.DeleteGuildCubit(get<_i19.IGuildRepository>()));
  gh.factory<_i55.DeleteMessageCubit>(
      () => _i55.DeleteMessageCubit(get<_i23.IMessageRepository>()));
  gh.factory<_i56.EditChannelCubit>(
      () => _i56.EditChannelCubit(get<_i13.IChannelRepository>()));
  gh.factory<_i57.EditGuildCubit>(
      () => _i57.EditGuildCubit(get<_i19.IGuildRepository>()));
  gh.factory<_i58.EditMessageCubit>(
      () => _i58.EditMessageCubit(get<_i23.IMessageRepository>()));
  gh.factory<_i59.ForgotPasswordCubit>(
      () => _i59.ForgotPasswordCubit(get<_i11.IAuthFacade>()));
  gh.factory<_i60.GetAppearanceCubit>(
      () => _i60.GetAppearanceCubit(get<_i21.IMemberRepository>()));
  gh.factory<_i61.GetFriendsCubit>(
      () => _i61.GetFriendsCubit(get<_i17.IFriendRepository>()));
  gh.factory<_i62.GetInviteLinkCubit>(
      () => _i62.GetInviteLinkCubit(get<_i19.IGuildRepository>()));
  gh.factory<_i63.GetPrivateChannelMembersCubit>(
      () => _i63.GetPrivateChannelMembersCubit(get<_i13.IChannelRepository>()));
  gh.factory<_i64.GetRequestsCubit>(
      () => _i64.GetRequestsCubit(get<_i17.IFriendRepository>()));
  gh.factory<_i65.GuildListCubit>(
      () => _i65.GuildListCubit(get<_i19.IGuildRepository>()));
  return get;
}

class _$InjectableModule extends _i66.InjectableModule {}
