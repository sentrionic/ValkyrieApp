import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/application/notifications/dm_notifications_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/user_fixtures.dart';

void main() {
  group('DMNotificationsCubit', () {
    final notification = DMNotification(
      id: getRandomId(),
      count: 0,
      user: getDMUserFixture(),
    );

    final notification2 = DMNotification(
      id: getRandomId(),
      count: 0,
      user: getDMUserFixture(),
    );

    blocTest(
      'emits [] when nothing was set',
      build: () => DMNotificationsCubit(),
      expect: () => [],
    );

    blocTest(
      'emits [[notification]] when [addNotification] is called',
      build: () => DMNotificationsCubit(),
      act: (DMNotificationsCubit cubit) => cubit.addNotification(notification),
      expect: () => [
        [notification]
      ],
    );

    blocTest(
      'emits [[notification]] with incremented count when [addNotification] is called and the notification already exists',
      build: () => DMNotificationsCubit()..addNotification(notification),
      act: (DMNotificationsCubit cubit) => cubit.addNotification(notification),
      expect: () => [
        [notification.copyWith(count: 1)]
      ],
    );

    blocTest(
      'emits [[notification2, notification]] when [addNotification] is called and another notification already exists',
      build: () => DMNotificationsCubit()..addNotification(notification),
      act: (DMNotificationsCubit cubit) => cubit.addNotification(notification2),
      expect: () => [
        [notification2, notification]
      ],
    );

    blocTest(
      'emits [[notification2, notification]] with incremented count when [addNotification] is called and the notification already exists',
      build: () => DMNotificationsCubit()
        ..addNotification(notification2)
        ..addNotification(notification),
      act: (DMNotificationsCubit cubit) => cubit.addNotification(notification2),
      expect: () => [
        [notification2.copyWith(count: 1), notification]
      ],
    );

    blocTest(
      'emits [] when [removeNotification] is called',
      build: () => DMNotificationsCubit()..addNotification(notification),
      act: (DMNotificationsCubit cubit) =>
          cubit.removeNotification(notification.id),
      expect: () => [[]],
    );

    blocTest(
      'emits [notification] when [removeNotification] is called with an id that is not in the list',
      build: () => DMNotificationsCubit()..addNotification(notification2),
      act: (DMNotificationsCubit cubit) =>
          cubit.removeNotification(notification.id),
      expect: () => [
        [notification2]
      ],
    );
  });
}
