import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/application/notifications/request_notifications_cubit.dart';

import '../../fixtures/faker.dart';

void main() {
  group('RequestNotificationsCubit', () {
    final number = getRandomInt(1, 99);

    blocTest(
      'emits [] when nothing was set',
      build: () => RequestNotificationsCubit(),
      expect: () => [],
    );

    blocTest(
      'emits [number] when [addNotification] is called with the given number',
      build: () => RequestNotificationsCubit(),
      act: (RequestNotificationsCubit cubit) => cubit.addNotification(number),
      expect: () => [number],
    );

    blocTest(
      'emits [number + number] when [addNotification] is called with the given number on an already existing number',
      build: () => RequestNotificationsCubit()..addNotification(number),
      act: (RequestNotificationsCubit cubit) => cubit.addNotification(number),
      expect: () => [2 * number],
    );
    blocTest(
      'emits [0] when [decrement] is called',
      build: () => RequestNotificationsCubit()..addNotification(1),
      act: (RequestNotificationsCubit cubit) => cubit.decrement(),
      expect: () => [0],
    );

    blocTest(
      'emits [0] when [decrement] is called on 0',
      build: () => RequestNotificationsCubit(),
      act: (RequestNotificationsCubit cubit) => cubit.decrement(),
      expect: () => [0],
    );
  });
}
