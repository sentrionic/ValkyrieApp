import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'send_friend_request_state.dart';
part 'send_friend_request_cubit.freezed.dart';

/// SendFriendRequestCubit handles sending [FriendRequest]s
@injectable
class SendFriendRequestCubit extends Cubit<SendFriendRequestState> {
  final IFriendRepository _repository;
  SendFriendRequestCubit(this._repository)
      : super(const SendFriendRequestState.initial());

  /// Sends a [FriendRequest] to the given user.
  /// Emits [unit] if successful and [FriendFailure] otherwise.
  Future<void> sendFriendRequest(String userId) async {
    emit(const SendFriendRequestState.actionInProgress());
    final possibleFailure = await _repository.sendFriendRequest(userId);
    emit(
      possibleFailure.fold(
        (f) => SendFriendRequestState.actionFailure(f),
        (_) => const SendFriendRequestState.actionSuccess(),
      ),
    );
  }
}
