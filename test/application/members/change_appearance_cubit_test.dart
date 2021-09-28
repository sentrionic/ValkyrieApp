import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/members/change_appearance/change_appearance_cubit.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import '../../fixtures/faker.dart';

class MockMemberRepository extends Mock implements IMemberRepository {}

void main() {
  late MockMemberRepository repository;
  late ChangeAppearanceCubit changeAppearanceCubit;

  setUp(() {
    repository = MockMemberRepository();
    changeAppearanceCubit = ChangeAppearanceCubit(repository);
  });

  group('NicknameChanged', () {
    final newName = getRandomName();

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits the new [Nickname]',
      build: () => changeAppearanceCubit,
      act: (cubit) => cubit.nicknameChanged(newName),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          nickname: Nickname(newName),
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('ResetNickname', () {
    final newName = getRandomName();

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits the new [Nickname]',
      build: () {
        changeAppearanceCubit.nicknameChanged(newName);
        return changeAppearanceCubit;
      },
      act: (cubit) => cubit.resetNickname(),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          nickname: null,
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('ColorChanged', () {
    const newColor = "#2d2d2d";

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits the new [HexColor]',
      build: () => changeAppearanceCubit,
      act: (cubit) => cubit.colorChanged(newColor),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          hexColor: HexColor(newColor),
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('ResetColor', () {
    const newColor = "#2d2d2d";

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits the new [HexColor]',
      build: () {
        changeAppearanceCubit.colorChanged(newColor);
        return changeAppearanceCubit;
      },
      act: (cubit) => cubit.resetColor(),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          hexColor: null,
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SubmitChanges', () {
    final guildId = getRandomId();
    final newName = getRandomName();
    const newColor = "#2d2d2d";

    test(
        'initial ChangeAppearanceState should be ChangeAppearanceState.initial()',
        () {
      // assert
      expect(
        changeAppearanceCubit.state,
        equals(ChangeAppearanceState.initial()),
      );
    });

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits [initial] states for successful appearance change',
      build: () {
        when(
          () => repository.changeAppearance(
            guildId: guildId,
            nickname: newName,
            color: newColor,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        changeAppearanceCubit.nicknameChanged(newName);
        changeAppearanceCubit.colorChanged(newColor);
        return changeAppearanceCubit;
      },
      act: (cubit) => cubit.submitChanges(guildId),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          nickname: Nickname(newName),
          hexColor: HexColor(newColor),
          isSaving: true,
        ),
        ChangeAppearanceState.initial().copyWith(
          nickname: Nickname(newName),
          hexColor: HexColor(newColor),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.changeAppearance(
            guildId: guildId,
            nickname: newName,
            color: newColor,
          ),
        ).called(1);
      },
    );

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits [initial] states for unsuccessful appearance change',
      build: () {
        when(
          () => repository.changeAppearance(
            guildId: guildId,
            nickname: newName,
            color: newColor,
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MemberFailure.unexpected()),
          ),
        );
        changeAppearanceCubit.nicknameChanged(newName);
        changeAppearanceCubit.colorChanged(newColor);
        return changeAppearanceCubit;
      },
      act: (cubit) => cubit.submitChanges(guildId),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          nickname: Nickname(newName),
          hexColor: HexColor(newColor),
          isSaving: true,
        ),
        ChangeAppearanceState.initial().copyWith(
          nickname: Nickname(newName),
          hexColor: HexColor(newColor),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption:
              some(left(const MemberFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => repository.changeAppearance(
            guildId: guildId,
            nickname: newName,
            color: newColor,
          ),
        ).called(1);
      },
    );

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits [initial] states for invalid nickname',
      build: () {
        changeAppearanceCubit.nicknameChanged("");
        return changeAppearanceCubit;
      },
      act: (cubit) => cubit.submitChanges(guildId),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          nickname: Nickname(""),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => repository.changeAppearance(
            guildId: guildId,
            nickname: newName,
            color: newColor,
          ),
        );
      },
    );

    blocTest<ChangeAppearanceCubit, ChangeAppearanceState>(
      'emits [initial] states for invalid hexolor',
      build: () {
        changeAppearanceCubit.colorChanged(newName);
        return changeAppearanceCubit;
      },
      act: (cubit) => cubit.submitChanges(guildId),
      expect: () => [
        ChangeAppearanceState.initial().copyWith(
          hexColor: HexColor(newName),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => repository.changeAppearance(
            guildId: guildId,
            nickname: newName,
            color: newColor,
          ),
        );
      },
    );
  });
}
