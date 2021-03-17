part of 'update_account_bloc.dart';

@freezed
class UpdateAccountEvent with _$UpdateAccountEvent {
  const factory UpdateAccountEvent.emailChanged(String email) = _EmailChanged;
  const factory UpdateAccountEvent.usernameChanged(String username) =
      _UsernameChanged;
  const factory UpdateAccountEvent.imageChanged(File image) = _ImageChanged;
  const factory UpdateAccountEvent.saved() = _Saved;
}
