part of 'member_cubit.dart';

@freezed
class MemberState with _$MemberState {
  const factory MemberState.initial() = _Initial;
  const factory MemberState.loadInProgress() = _LoadInProgress;
  const factory MemberState.loadSuccess(List<Member> members) = _LoadSuccess;
  const factory MemberState.loadFailure(MemberFailure memberFailure) =
      _LoadFailure;
}
