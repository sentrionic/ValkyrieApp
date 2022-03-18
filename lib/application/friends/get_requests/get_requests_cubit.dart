import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'get_requests_state.dart';
part 'get_requests_cubit.freezed.dart';

/// GetRequestsCubit manages everything related to the current user's [FriendRequest]s
@injectable
class GetRequestsCubit extends Cubit<GetRequestsState> {
  final IFriendRepository _repository;
  GetRequestsCubit(this._repository) : super(const GetRequestsState.initial());

  /// Fetches the user's friends requests from the network.
  /// Emits a list of [FriendRequest]s if successful and [FriendFailure] otherwise.
  Future<void> getFriendRequests() async {
    emit(const GetRequestsState.loadInProgress());
    final failureOrFriends = await _repository.getPendingRequests();
    emit(
      failureOrFriends.fold(
        (f) => GetRequestsState.loadFailure(f),
        (requests) => GetRequestsState.loadSuccess(requests),
      ),
    );
  }

  /// Adds the given friend request to the [GetRequestsState]
  void addRequest(FriendRequest request) {
    state.maybeWhen(
      loadSuccess: (requests) async {
        final data = [...requests, request];
        data.sort((a, b) => a.username.compareTo(b.username));
        emit(GetRequestsState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Removes the friend request for the given id from the [GetRequestsState]
  void removeRequest(String userId) {
    state.maybeWhen(
      loadSuccess: (requests) async {
        final data = requests.where((e) => e.id != userId).toList();
        emit(GetRequestsState.loadSuccess(data));
      },
      orElse: () {},
    );
  }
}
