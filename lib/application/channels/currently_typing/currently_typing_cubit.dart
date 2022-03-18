import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// CurrentlyTypingCubit stores and retrieves a list of usernames that are currently typing
@injectable
class CurrentlyTypingCubit extends Cubit<List<String>> {
  CurrentlyTypingCubit() : super([]);

  /// Adds a username to the list of users that are currently typing
  void addToTyping(String username) {
    final list = [...state, username];
    emit(list);
  }

  /// Removes a username from the list of users that are currently typing
  void removeFromTyping(String username) {
    state.remove(username);
    emit([...state]);
  }
}
