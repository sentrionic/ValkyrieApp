import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'accept_request_state.dart';
part 'accept_request_cubit.freezed.dart';

@injectable
class AcceptRequestCubit extends Cubit<AcceptRequestState> {
  final IFriendRepository _repository;
  AcceptRequestCubit(this._repository)
      : super(const AcceptRequestState.initial());

  Future<void> acceptFriendRequest(String userId) async {
    emit(const AcceptRequestState.actionInProgress());
    final possibleFailure = await _repository.acceptRequest(userId);
    emit(
      possibleFailure.fold(
        (f) => AcceptRequestState.actionFailure(f),
        (_) => const AcceptRequestState.actionSuccess(),
      ),
    );
  }
}
