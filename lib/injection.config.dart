// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/change_password/change_password_cubit.dart' as _i20;
import 'application/account/get_account/account_cubit.dart' as _i18;
import 'application/account/update_account/update_account_bloc.dart' as _i17;
import 'application/auth/auth_status/auth_status_bloc.dart' as _i19;
import 'application/auth/forgot_password/forgot_password_cubit.dart' as _i22;
import 'application/auth/login_form/login_form_bloc.dart' as _i15;
import 'application/auth/register_form/register_form_bloc.dart' as _i16;
import 'application/dms/dm_list/dm_list_bloc.dart' as _i21;
import 'application/friends/get_friends/get_friends_cubit.dart' as _i23;
import 'application/guilds/guild_list/guild_list_bloc.dart' as _i24;
import 'domain/account/i_account_repository.dart' as _i5;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/dms/i_dm_repository.dart' as _i9;
import 'domain/friends/i_friend_repository.dart' as _i11;
import 'domain/guilds/i_guild_repository.dart' as _i13;
import 'infrastructure/account/account_repository.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i8;
import 'infrastructure/core/injectable_module.dart' as _i25;
import 'infrastructure/dms/dm_repository.dart' as _i10;
import 'infrastructure/friends/friend_repository.dart' as _i12;
import 'infrastructure/guilds/guild_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.FlutterSecureStorage>(() => injectableModule.storage);
  gh.factory<String>(() => injectableModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i4.Dio>(
      () => injectableModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i5.IAccountRepository>(
      () => _i6.AccountRepository(get<_i4.Dio>()));
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.AuthFacade(get<_i4.Dio>(), get<_i3.FlutterSecureStorage>()));
  gh.lazySingleton<_i9.IDMRepository>(() => _i10.DMRepository(get<_i4.Dio>()));
  gh.lazySingleton<_i11.IFriendRepository>(
      () => _i12.FriendRepository(get<_i4.Dio>()));
  gh.lazySingleton<_i13.IGuildRepository>(
      () => _i14.GuildRepository(get<_i4.Dio>()));
  gh.factory<_i15.LoginFormBloc>(
      () => _i15.LoginFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i16.RegisterFormBloc>(
      () => _i16.RegisterFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i17.UpdateAccountBloc>(
      () => _i17.UpdateAccountBloc(get<_i5.IAccountRepository>()));
  gh.factory<_i18.AccountCubit>(
      () => _i18.AccountCubit(get<_i5.IAccountRepository>()));
  gh.factory<_i19.AuthStatusBloc>(
      () => _i19.AuthStatusBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i20.ChangePasswordCubit>(
      () => _i20.ChangePasswordCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i21.DMListBloc>(() => _i21.DMListBloc(get<_i9.IDMRepository>()));
  gh.factory<_i22.ForgotPasswordCubit>(
      () => _i22.ForgotPasswordCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i23.GetFriendsCubit>(
      () => _i23.GetFriendsCubit(get<_i11.IFriendRepository>()));
  gh.factory<_i24.GuildListBloc>(
      () => _i24.GuildListBloc(get<_i13.IGuildRepository>()));
  return get;
}

class _$InjectableModule extends _i25.InjectableModule {}
