part of 'get_requests_cubit.dart';

@freezed
class GetRequestsState with _$GetRequestsState {
  const factory GetRequestsState.initial() = _Initial;
  const factory GetRequestsState.loadInProgress() = _LoadInProgress;
  const factory GetRequestsState.loadSuccess(List<FriendRequest> requests) =
      _LoadSuccess;
  const factory GetRequestsState.loadFailure(FriendFailure failure) =
      _LoadFailure;
}
