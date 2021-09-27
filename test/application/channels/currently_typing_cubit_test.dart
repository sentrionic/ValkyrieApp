import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';

import '../../fixtures/faker.dart';

void main() {
  group('CurrentlyTypingCubit', () {
    final username = getRandomName();

    blocTest(
      'emits [] when nothing was set',
      build: () => CurrentlyTypingCubit(),
      expect: () => [],
    );

    blocTest(
      'emits [[username]] when [addToTyping] is called',
      build: () => CurrentlyTypingCubit(),
      act: (CurrentlyTypingCubit cubit) => cubit.addToTyping(username),
      expect: () => [
        [username]
      ],
    );

    blocTest(
      'emits [[]] when [removeFromTyping] is called',
      build: () => CurrentlyTypingCubit()..addToTyping(username),
      act: (CurrentlyTypingCubit cubit) => cubit.removeFromTyping(username),
      expect: () => [[]],
    );
  });
}
