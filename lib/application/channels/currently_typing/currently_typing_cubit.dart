import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentlyTypingCubit extends Cubit<List<String>> {
  CurrentlyTypingCubit() : super([]);

  void addToTyping(String username) {
    final list = [...state, username];
    emit(list);
  }

  void removeFromTyping(String username) {
    state.remove(username);
    emit([...state]);
  }
}
