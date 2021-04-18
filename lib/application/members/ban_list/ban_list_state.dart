part of 'ban_list_cubit.dart';

@freezed
class BanListState with _$BanListState {
  const factory BanListState.initial() = _Initial;
  const factory BanListState.loadInProgress() = _LoadInProgress;
  const factory BanListState.loadSuccess(List<BannedMember> members) =
      _LoadSuccess;
  const factory BanListState.loadFailure(MemberFailure memberFailure) =
      _LoadFailure;
}
