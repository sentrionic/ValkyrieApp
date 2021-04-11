part of 'member_list_cubit.dart';

@freezed
class MemberListState with _$MemberListState {
  const factory MemberListState.initial() = _Initial;
  const factory MemberListState.loadInProgress() = _LoadInProgress;
  const factory MemberListState.loadSuccess(List<Member> members) =
      _LoadSuccess;
  const factory MemberListState.loadFailure(MemberFailure memberFailure) =
      _LoadFailure;
}
