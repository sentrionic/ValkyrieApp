import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';

import '../../fixtures/faker.dart';

void main() {
  group('CurrentChannelCubit', () {
    final channelId = getRandomId();

    blocTest(
      'emits [] when nothing was set',
      build: () => CurrentChannelCubit(),
      expect: () => [],
    );

    blocTest(
      'emits [channelId] when [setChannellId] is called',
      build: () => CurrentChannelCubit(),
      act: (CurrentChannelCubit cubit) => cubit.setChannelId(channelId),
      expect: () => [channelId],
    );

    blocTest(
      'emits [""] when [resetChannelId] is called',
      build: () => CurrentChannelCubit()..setChannelId(channelId),
      act: (CurrentChannelCubit cubit) => cubit.resetChannelId(),
      expect: () => [""],
    );
  });
}
