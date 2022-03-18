import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';
import 'package:valkyrie_app/domain/friends/value_objects.dart';

part 'add_friend_state.dart';
part 'add_friend_cubit.freezed.dart';

/// AcceptRequestCubit handles adding user's to friends flow
@injectable
class AddFriendCubit extends Cubit<AddFriendState> {
  final IFriendRepository _repository;
  AddFriendCubit(this._repository) : super(AddFriendState.initial());

  /// Changes the value of the [uid] in the [AddFriendState]
  /// and resets the error.
  Future<void> idChanged(String id) async {
    emit(
      state.copyWith(
        uid: UID(id),
        failureOrSuccessOption: none(),
      ),
    );
  }

  /// Sends a friend request to the given user.
  /// Emits the [unit] if successful and [FriendFailure] otherwise
  Future<void> sendFriendRequest() async {
    Either<FriendFailure, Unit>? failureOrSuccess;

    final isUIDValid = state.uid.isValid();

    if (isUIDValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _repository.sendFriendRequest(
        state.uid.getOrCrash(),
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
