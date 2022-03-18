import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'remove_friend_state.dart';
part 'remove_friend_cubit.freezed.dart';

/// RemoveFriendCubit handles the removal of [Friend]s
@injectable
class RemoveFriendCubit extends Cubit<RemoveFriendState> {
  final IFriendRepository _repository;
  RemoveFriendCubit(this._repository)
      : super(const RemoveFriendState.initial());

  /// Removes the given friend from the user's friend list.
  /// Emits [unit] if successful and [FriendFailure] otherwise.
  Future<void> removeFriend(String userId) async {
    emit(const RemoveFriendState.actionInProgress());
    final possibleFailure = await _repository.removeFriend(userId);
    emit(
      possibleFailure.fold(
        (f) => RemoveFriendState.actionFailure(f),
        (_) => const RemoveFriendState.actionSuccess(),
      ),
    );
  }
}
