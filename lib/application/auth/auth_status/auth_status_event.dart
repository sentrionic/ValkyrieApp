part of 'auth_status_bloc.dart';

@freezed
class AuthStatusEvent with _$AuthStatusEvent {
  const factory AuthStatusEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthStatusEvent.signedOut() = SignedOut;
}
