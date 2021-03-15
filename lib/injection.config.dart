// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/change_password/change_password_cubit.dart' as _i18;
import 'application/account/get_account/account_cubit.dart' as _i16;
import 'application/account/update_account/update_account_bloc.dart' as _i15;
import 'application/auth/auth_status/auth_status_bloc.dart' as _i17;
import 'application/auth/forgot_password/forgot_password_cubit.dart' as _i20;
import 'application/auth/login_form/login_form_bloc.dart' as _i13;
import 'application/auth/register_form/register_form_bloc.dart' as _i14;
import 'application/dms/dm_list/dm_list_bloc.dart' as _i19;
import 'application/guilds/guild_list/guild_list_bloc.dart' as _i21;
import 'domain/account/i_account_repository.dart' as _i5;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/dms/i_dm_repository.dart' as _i9;
import 'domain/guilds/i_guild_repository.dart' as _i11;
import 'infrastructure/account/account_repository.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i8;
import 'infrastructure/core/injectable_module.dart' as _i22;
import 'infrastructure/dms/dm_repository.dart' as _i10;
import 'infrastructure/guilds/guild_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.IGuildRepository>(
      () => _i12.GuildRepository(get<_i4.Dio>()));
  gh.factory<_i13.LoginFormBloc>(
      () => _i13.LoginFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i14.RegisterFormBloc>(
      () => _i14.RegisterFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i15.UpdateAccountBloc>(
      () => _i15.UpdateAccountBloc(get<_i5.IAccountRepository>()));
  gh.factory<_i16.AccountCubit>(
      () => _i16.AccountCubit(get<_i5.IAccountRepository>()));
  gh.factory<_i17.AuthStatusBloc>(
      () => _i17.AuthStatusBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i18.ChangePasswordCubit>(
      () => _i18.ChangePasswordCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i19.DMListBloc>(() => _i19.DMListBloc(get<_i9.IDMRepository>()));
  gh.factory<_i20.ForgotPasswordCubit>(
      () => _i20.ForgotPasswordCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i21.GuildListBloc>(
      () => _i21.GuildListBloc(get<_i11.IGuildRepository>()));
  return get;
}

class _$InjectableModule extends _i22.InjectableModule {}
