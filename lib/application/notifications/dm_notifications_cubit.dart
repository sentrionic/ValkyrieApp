import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';

/// DMNotificationsCubit manages the [DMNotification] of the current user
@injectable
class DMNotificationsCubit extends Cubit<List<DMNotification>> {
  DMNotificationsCubit() : super([]);

  /// Adds a [DMNotification] to the list or increases its count if it already exists.
  /// Emits the list of all [DMNotification].
  void addNotification(DMNotification newNotification) {
    final index = state.indexWhere((e) => e.id == newNotification.id);
    if (index != -1) {
      final notification = state[index];
      emit([
        notification.copyWith(count: notification.count + 1),
        ...state.where((e) => e.id != notification.id).toList()
      ]);
    } else {
      emit([newNotification, ...state]);
    }
  }

  /// Removes the given id from the list and emits the new list.
  void removeNotification(String id) {
    emit([...state.where((e) => e.id != id).toList()]);
  }
}
