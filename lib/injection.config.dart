// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/change_password/change_password_cubit.dart' as _i30;
import 'application/account/get_account/account_cubit.dart' as _i28;
import 'application/account/update_account/update_account_bloc.dart' as _i27;
import 'application/auth/auth_status/auth_status_bloc.dart' as _i29;
import 'application/auth/forgot_password/forgot_password_cubit.dart' as _i34;
import 'application/auth/login_form/login_form_bloc.dart' as _i23;
import 'application/auth/register_form/register_form_bloc.dart' as _i26;
import 'application/channels/cubit/channel_cubit.dart' as _i31;
import 'application/channels/current/current_channel_cubit.dart' as _i3;
import 'application/channels/currently_typing/currently_typing_cubit.dart'
    as _i5;
import 'application/dms/dm_list/dm_list_bloc.dart' as _i33;
import 'application/friends/get_friends/get_friends_cubit.dart' as _i35;
import 'application/guilds/current/current_guild_cubit.dart' as _i4;
import 'application/guilds/guild_list/guild_list_cubit.dart' as _i36;
import 'application/members/member/member_cubit.dart' as _i24;
import 'application/messages/create_message/create_message_cubit.dart' as _i32;
import 'application/messages/get_messages/messages_cubit.dart' as _i25;
import 'domain/account/i_account_repository.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/channels/i_channel_repository.dart' as _i11;
import 'domain/dms/i_dm_repository.dart' as _i13;
import 'domain/friends/i_friend_repository.dart' as _i15;
import 'domain/guilds/i_guild_repository.dart' as _i17;
import 'domain/member/i_member_repository.dart' as _i19;
import 'domain/message/i_message_repository.dart' as _i21;
import 'infrastructure/account/account_repository.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i10;
import 'infrastructure/channels/channel_repository.dart' as _i12;
import 'infrastructure/core/injectable_module.dart' as _i37;
import 'infrastructure/dms/dm_repository.dart' as _i14;
import 'infrastructure/friends/friend_repository.dart' as _i16;
import 'infrastructure/guilds/guild_repository.dart' as _i18;
import 'infrastructure/members/member_repository.dart' as _i20;
import 'infrastructure/messages/message_repository.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.CurrentChannelCubit>(() => _i3.CurrentChannelCubit());
  gh.factory<_i4.CurrentGuildCubit>(() => _i4.CurrentGuildCubit());
  gh.factory<_i5.CurrentlyTypingCubit>(() => _i5.CurrentlyTypingCubit());
  gh.factory<String>(() => injectableModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i6.Dio>(
      () => injectableModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i7.IAccountRepository>(
      () => _i8.AccountRepository(get<_i6.Dio>()));
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.AuthFacade(get<_i6.Dio>()));
  gh.lazySingleton<_i11.IChannelRepository>(
      () => _i12.ChannelRepository(get<_i6.Dio>()));
  gh.lazySingleton<_i13.IDMRepository>(() => _i14.DMRepository(get<_i6.Dio>()));
  gh.lazySingleton<_i15.IFriendRepository>(
      () => _i16.FriendRepository(get<_i6.Dio>()));
  gh.lazySingleton<_i17.IGuildRepository>(
      () => _i18.GuildRepository(get<_i6.Dio>()));
  gh.lazySingleton<_i19.IMemberRepository>(
      () => _i20.MemberRepository(get<_i6.Dio>()));
  gh.lazySingleton<_i21.IMessageRepository>(
      () => _i22.MessageRepository(get<_i6.Dio>()));
  gh.factory<_i23.LoginFormBloc>(
      () => _i23.LoginFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i24.MemberCubit>(
      () => _i24.MemberCubit(get<_i19.IMemberRepository>()));
  gh.factory<_i25.MessagesCubit>(
      () => _i25.MessagesCubit(get<_i21.IMessageRepository>()));
  gh.factory<_i26.RegisterFormBloc>(
      () => _i26.RegisterFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i27.UpdateAccountBloc>(
      () => _i27.UpdateAccountBloc(get<_i7.IAccountRepository>()));
  gh.factory<_i28.AccountCubit>(
      () => _i28.AccountCubit(get<_i7.IAccountRepository>()));
  gh.factory<_i29.AuthStatusBloc>(
      () => _i29.AuthStatusBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i30.ChangePasswordCubit>(
      () => _i30.ChangePasswordCubit(get<_i9.IAuthFacade>()));
  gh.factory<_i31.ChannelCubit>(
      () => _i31.ChannelCubit(get<_i11.IChannelRepository>()));
  gh.factory<_i32.CreateMessageCubit>(
      () => _i32.CreateMessageCubit(get<_i21.IMessageRepository>()));
  gh.factory<_i33.DMListBloc>(() => _i33.DMListBloc(get<_i13.IDMRepository>()));
  gh.factory<_i34.ForgotPasswordCubit>(
      () => _i34.ForgotPasswordCubit(get<_i9.IAuthFacade>()));
  gh.factory<_i35.GetFriendsCubit>(
      () => _i35.GetFriendsCubit(get<_i15.IFriendRepository>()));
  gh.factory<_i36.GuildListCubit>(
      () => _i36.GuildListCubit(get<_i17.IGuildRepository>()));
  return get;
}

class _$InjectableModule extends _i37.InjectableModule {}
