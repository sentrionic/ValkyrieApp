import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// NotificationsCubit keeps track of all notifications the current user has.
@injectable
class NotificationsCubit extends Cubit<int> {
  NotificationsCubit() : super(0);

  /// Increases the current notification count by one
  void increment() => emit(state + 1);

  /// Decreases the current notification count by one
  void decrement() => removeFromCount(1);

  /// Increases the current notification count by the specified amount
  void addToCount(int amount) => emit(state + amount);

  /// Decreases the current notification count by the specified amount
  void removeFromCount(int amount) => emit(max(0, state - amount));
}
