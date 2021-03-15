part of 'dm_list_bloc.dart';

@freezed
class DMListEvent with _$DMListEvent {
  const factory DMListEvent.getUserDMs() = _GetUserDMs;
  const factory DMListEvent.dmChannelsReceived(
    Either<DMChannelFailure, List<DMChannel>> failureOrChannels,
  ) = _DMChannelsReceived;
}
