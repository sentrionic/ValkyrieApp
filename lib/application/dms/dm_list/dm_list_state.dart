part of 'dm_list_cubit.dart';

@freezed
class DMListState with _$DMListState {
  const factory DMListState.initial() = _Initial;
  const factory DMListState.loadInProgress() = _LoadInProgress;
  const factory DMListState.loadSuccess(List<DMChannel> channels) =
      _LoadSuccess;
  const factory DMListState.loadFailure(DMChannelFailure failure) =
      _LoadFailure;
}
