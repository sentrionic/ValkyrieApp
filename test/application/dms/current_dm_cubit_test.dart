import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';

import '../../fixtures/faker.dart';

void main() {
  group('CurrentDMCubit', () {
    final channelId = getRandomId();

    blocTest(
      'emits [] when nothing was set',
      build: () => CurrentDMCubit(),
      expect: () => [],
    );

    blocTest(
      'emits [channelId] when [setDMChannel] is called',
      build: () => CurrentDMCubit(),
      act: (CurrentDMCubit cubit) => cubit.setDMChannel(channelId),
      expect: () => [channelId],
    );

    blocTest(
      'emits [""] when [resetChannelId] is called',
      build: () => CurrentDMCubit()..setDMChannel(channelId),
      act: (CurrentDMCubit cubit) => cubit.resetChannelId(),
      expect: () => [""],
    );
  });
}
