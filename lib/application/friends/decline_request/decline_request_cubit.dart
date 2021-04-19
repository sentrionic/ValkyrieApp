import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'decline_request_state.dart';
part 'decline_request_cubit.freezed.dart';

@injectable
class DeclineRequestCubit extends Cubit<DeclineRequestState> {
  final IFriendRepository _repository;
  DeclineRequestCubit(this._repository)
      : super(const DeclineRequestState.initial());

  Future<void> declineRequest(String userId) async {
    emit(const DeclineRequestState.actionInProgress());
    final possibleFailure = await _repository.declineRequest(userId);
    emit(
      possibleFailure.fold(
        (f) => DeclineRequestState.actionFailure(f),
        (_) => const DeclineRequestState.actionSuccess(),
      ),
    );
  }
}
