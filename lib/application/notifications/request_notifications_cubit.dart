import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class RequestNotificationsCubit extends Cubit<int> {
  RequestNotificationsCubit() : super(0);

  void addNotification(int amount) => emit(state + amount);

  void decrement() => emit(max(0, state - 1));
}
