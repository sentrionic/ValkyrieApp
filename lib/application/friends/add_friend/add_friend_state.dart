part of 'add_friend_cubit.dart';

@freezed
class AddFriendState with _$AddFriendState {
  const factory AddFriendState({
    required UID uid,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<FriendFailure, Unit>> failureOrSuccessOption,
  }) = _AddFriendState;

  factory AddFriendState.initial() => AddFriendState(
        uid: UID(''),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
