// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/change_password/change_password_cubit.dart' as _i37;
import 'application/account/get_account/account_cubit.dart' as _i34;
import 'application/account/update_account/update_account_bloc.dart' as _i32;
import 'application/auth/auth_status/auth_status_bloc.dart' as _i35;
import 'application/auth/forgot_password/forgot_password_cubit.dart' as _i46;
import 'application/auth/login_form/login_form_bloc.dart' as _i24;
import 'application/auth/register_form/register_form_bloc.dart' as _i28;
import 'application/channels/channel_list/channel_list_cubit.dart' as _i38;
import 'application/channels/create_channel/create_channel_cubit.dart' as _i39;
import 'application/channels/current/current_channel_cubit.dart' as _i3;
import 'application/channels/currently_typing/currently_typing_cubit.dart'
    as _i5;
import 'application/channels/delete_channel/delete_channel_cubit.dart' as _i42;
import 'application/channels/edit_channel/edit_channel_cubit.dart' as _i44;
import 'application/channels/get_private_channel_members/get_private_channel_members_cubit.dart'
    as _i50;
import 'application/dms/dm_list/dm_list_bloc.dart' as _i41;
import 'application/dms/start_dm/start_dm_cubit.dart' as _i31;
import 'application/friends/get_friends/get_friends_cubit.dart' as _i48;
import 'application/friends/remove_friend/remove_friend_cubit.dart' as _i29;
import 'application/friends/send_friend_request/send_friend_request_cubit.dart'
    as _i30;
import 'application/guilds/change_appearance/change_appearance_cubit.dart'
    as _i36;
import 'application/guilds/current/current_guild_cubit.dart' as _i4;
import 'application/guilds/get_appearance/get_appearance_cubit.dart' as _i47;
import 'application/guilds/get_invite_link/get_invite_link_cubit.dart' as _i49;
import 'application/guilds/guild_list/guild_list_cubit.dart' as _i51;
import 'application/members/member_list/member_list_cubit.dart' as _i25;
import 'application/members/moderate_member/moderate_member_cubit.dart' as _i27;
import 'application/messages/create_message/create_message_cubit.dart' as _i40;
import 'application/messages/delete_message/delete_message_cubit.dart' as _i43;
import 'application/messages/download_image/download_image_cubit.dart' as _i6;
import 'application/messages/edit_message/edit_message_cubit.dart' as _i45;
import 'application/messages/get_messages/messages_cubit.dart' as _i26;
import 'application/messages/upload_image/upload_image_cubit.dart' as _i33;
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
import 'infrastructure/core/injectable_module.dart' as _i52;
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
  gh.factory<_i24.LoginFormBloc>(
      () => _i24.LoginFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i25.MemberListCubit>(
      () => _i25.MemberListCubit(get<_i20.IMemberRepository>()));
  gh.factory<_i26.MessagesCubit>(
      () => _i26.MessagesCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i27.ModerateMemberCubit>(
      () => _i27.ModerateMemberCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i28.RegisterFormBloc>(
      () => _i28.RegisterFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i29.RemoveFriendCubit>(
      () => _i29.RemoveFriendCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i30.SendFriendRequestCubit>(
      () => _i30.SendFriendRequestCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i31.StartDMCubit>(
      () => _i31.StartDMCubit(get<_i14.IDMRepository>()));
  gh.factory<_i32.UpdateAccountBloc>(
      () => _i32.UpdateAccountBloc(get<_i8.IAccountRepository>()));
  gh.factory<_i33.UploadImageCubit>(
      () => _i33.UploadImageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i34.AccountCubit>(
      () => _i34.AccountCubit(get<_i8.IAccountRepository>()));
  gh.factory<_i35.AuthStatusBloc>(
      () => _i35.AuthStatusBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i36.ChangeAppearanceCubit>(
      () => _i36.ChangeAppearanceCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i37.ChangePasswordCubit>(
      () => _i37.ChangePasswordCubit(get<_i10.IAuthFacade>()));
  gh.factory<_i38.ChannelListCubit>(
      () => _i38.ChannelListCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i39.CreateChannelCubit>(
      () => _i39.CreateChannelCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i40.CreateMessageCubit>(
      () => _i40.CreateMessageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i41.DMListBloc>(() => _i41.DMListBloc(get<_i14.IDMRepository>()));
  gh.factory<_i42.DeleteChannelCubit>(
      () => _i42.DeleteChannelCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i43.DeleteMessageCubit>(
      () => _i43.DeleteMessageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i44.EditChannelCubit>(
      () => _i44.EditChannelCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i45.EditMessageCubit>(
      () => _i45.EditMessageCubit(get<_i22.IMessageRepository>()));
  gh.factory<_i46.ForgotPasswordCubit>(
      () => _i46.ForgotPasswordCubit(get<_i10.IAuthFacade>()));
  gh.factory<_i47.GetAppearanceCubit>(
      () => _i47.GetAppearanceCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i48.GetFriendsCubit>(
      () => _i48.GetFriendsCubit(get<_i16.IFriendRepository>()));
  gh.factory<_i49.GetInviteLinkCubit>(
      () => _i49.GetInviteLinkCubit(get<_i18.IGuildRepository>()));
  gh.factory<_i50.GetPrivateChannelMembersCubit>(
      () => _i50.GetPrivateChannelMembersCubit(get<_i12.IChannelRepository>()));
  gh.factory<_i51.GuildListCubit>(
      () => _i51.GuildListCubit(get<_i18.IGuildRepository>()));
  return get;
}

class _$InjectableModule extends _i52.InjectableModule {}
