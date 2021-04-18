part of 'get_appearance_cubit.dart';

@freezed
class GetAppearanceState with _$GetAppearanceState {
  const factory GetAppearanceState.initial() = _Initial;
  const factory GetAppearanceState.loadInProgress() = _LoadInProgress;
  const factory GetAppearanceState.loadSuccess(GuildAppearance appearance) =
      _LoadSuccess;
  const factory GetAppearanceState.loadFailure(MemberFailure failure) =
      _LoadFailure;
}
