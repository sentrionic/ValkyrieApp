import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'get_friends_state.dart';
part 'get_friends_cubit.freezed.dart';

@injectable
class GetFriendsCubit extends Cubit<GetFriendsState> {
  final IFriendRepository _repository;
  GetFriendsCubit(this._repository) : super(const GetFriendsState.initial());

  Future<void> getFriends() async {
    emit(const GetFriendsState.loadInProgress());
    final failureOrFriends = await _repository.getFriends();
    emit(
      failureOrFriends.fold(
        (f) => GetFriendsState.loadFailure(f),
        (friends) => GetFriendsState.loadSuccess(friends),
      ),
    );
  }
}
