import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';

@injectable
class DMNotificationsCubit extends Cubit<List<DMNotification>> {
  DMNotificationsCubit() : super([]);

  void addNotification(DMNotification notification) {
    final index = state.indexWhere((e) => e.id == notification.id);
    if (index != -1) {
      final notification = state[index];
      emit([
        notification.copyWith(count: notification.count + 1),
        ...state.where((e) => e.id != notification.id).toList()
      ]);
    } else {
      emit([notification, ...state]);
    }
  }

  void removeNotification(String id) {
    emit([...state.where((e) => e.id != id).toList()]);
  }
}
