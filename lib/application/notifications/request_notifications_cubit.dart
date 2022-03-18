import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// RequestNotificationsCubit keeps track of the number of request notifications
@injectable
class RequestNotificationsCubit extends Cubit<int> {
  RequestNotificationsCubit() : super(0);

  /// Increases the amount of request notification by the specified amount
  void addNotification(int amount) => emit(state + amount);

  /// Decreases the amount of request notification by the specified amount
  void decrement() => emit(max(0, state - 1));
}
