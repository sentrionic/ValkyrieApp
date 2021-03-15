part of 'auth_status_bloc.dart';

@freezed
abstract class AuthStatusEvent with _$AuthStatusEvent {
  const factory AuthStatusEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthStatusEvent.signedOut() = SignedOut;
}
