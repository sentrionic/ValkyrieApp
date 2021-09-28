import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/application/notifications/notifications_cubit.dart';

import '../../fixtures/faker.dart';

void main() {
  group('NotificationsCubit', () {
    final number = getRandomInt(3, 99);

    blocTest(
      'emits [] when nothing was set',
      build: () => NotificationsCubit(),
      expect: () => [],
    );

    blocTest(
      'emits [1] when [increment] is called',
      build: () => NotificationsCubit(),
      act: (NotificationsCubit cubit) => cubit.increment(),
      expect: () => [1],
    );

    blocTest(
      'emits [2] when [increment] is called on an already existing number',
      build: () => NotificationsCubit()..increment(),
      act: (NotificationsCubit cubit) => cubit.increment(),
      expect: () => [2],
    );

    blocTest(
      'emits [number] when [addToCount] is called with said number',
      build: () => NotificationsCubit(),
      act: (NotificationsCubit cubit) => cubit.addToCount(number),
      expect: () => [number],
    );

    blocTest(
      'emits [number + 1] when [addToCount] is called with said number on an already existing number',
      build: () => NotificationsCubit()..increment(),
      act: (NotificationsCubit cubit) => cubit.addToCount(number),
      expect: () => [number + 1],
    );

    blocTest(
      'emits [0] when [decrement] is called',
      build: () => NotificationsCubit()..increment(),
      act: (NotificationsCubit cubit) => cubit.decrement(),
      expect: () => [0],
    );

    blocTest(
      'emits [0] when [decrement] is called on 0',
      build: () => NotificationsCubit(),
      act: (NotificationsCubit cubit) => cubit.decrement(),
      expect: () => [0],
    );

    blocTest(
      'emits [0] when [removeFromCount] is called',
      build: () => NotificationsCubit()..addToCount(number),
      act: (NotificationsCubit cubit) => cubit.removeFromCount(number),
      expect: () => [0],
    );

    blocTest(
      'emits [0] when [removeFromCount] is called on a number smaller than the provided one',
      build: () => NotificationsCubit()..addToCount(number - 1),
      act: (NotificationsCubit cubit) => cubit.removeFromCount(number),
      expect: () => [0],
    );
  });
}
