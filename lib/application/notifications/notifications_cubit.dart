import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class NotificationsCubit extends Cubit<int> {
  NotificationsCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => removeFromCount(1);

  void addToCount(int amount) => emit(state + amount);
  void removeFromCount(int amount) => emit(max(0, state - amount));
}
