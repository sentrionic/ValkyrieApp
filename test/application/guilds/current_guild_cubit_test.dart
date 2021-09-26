import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';

import '../../fixtures/faker.dart';

void main() {
  group('CurrentGuildCubit', () {
    final guildId = getRandomId();

    blocTest(
      'emits [] when nothing was set',
      build: () => CurrentGuildCubit(),
      expect: () => [],
    );

    blocTest(
      'emits [guildId] when [setGuildlId] is called',
      build: () => CurrentGuildCubit(),
      act: (CurrentGuildCubit cubit) => cubit.setGuildlId(guildId),
      expect: () => [guildId],
    );

    blocTest(
      'emits [""] when [resetGuildId] is called',
      build: () => CurrentGuildCubit()..setGuildlId(guildId),
      act: (CurrentGuildCubit cubit) => cubit.resetGuildId(),
      expect: () => [""],
    );
  });
}
