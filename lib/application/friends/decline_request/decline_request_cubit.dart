import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'decline_request_state.dart';
part 'decline_request_cubit.freezed.dart';

/// DeclineRequestCubit handles the declining of a [FriendRequest]
@injectable
class DeclineRequestCubit extends Cubit<DeclineRequestState> {
  final IFriendRepository _repository;
  DeclineRequestCubit(this._repository)
      : super(const DeclineRequestState.initial());

  /// Declines the friend request of the given userId
  /// Emits the [userId] if successful and [FriendFailure] otherwise
  Future<void> declineRequest(String userId) async {
    emit(const DeclineRequestState.actionInProgress());
    final possibleFailure = await _repository.declineRequest(userId);
    emit(
      possibleFailure.fold(
        (f) => DeclineRequestState.actionFailure(f),
        (_) => DeclineRequestState.actionSuccess(userId),
      ),
    );
  }
}
