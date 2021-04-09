part of 'auth_status_bloc.dart';

@freezed
class AuthStatusState with _$AuthStatusState {
  const factory AuthStatusState.initial() = Initial;
  const factory AuthStatusState.authenticated() = Authenticated;
  const factory AuthStatusState.unauthenticated() = Unauthenticated;
}
