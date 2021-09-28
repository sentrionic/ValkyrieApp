import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/members/moderate_member/moderate_member_cubit.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import '../../fixtures/faker.dart';

class MockMemberRepository extends Mock implements IMemberRepository {}

void main() {
  late MockMemberRepository repository;
  late ModerateMemberCubit moderateMemberCubit;

  setUp(() {
    repository = MockMemberRepository();
    moderateMemberCubit = ModerateMemberCubit(repository);
  });

  group('KickMember', () {
    final guildId = getRandomId();
    final memberId = getRandomId();

    test('initial ModerateMemberState should be ModerateMemberState.initial()',
        () {
      // assert
      expect(
        moderateMemberCubit.state,
        equals(const ModerateMemberState.initial()),
      );
    });

    blocTest<ModerateMemberCubit, ModerateMemberState>(
      'emits [actionInProgress, actionSuccess] states for successful kick',
      build: () {
        when(() => repository.kickMember(guildId, memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return moderateMemberCubit;
      },
      act: (cubit) => cubit.kickMember(guildId, memberId),
      expect: () => [
        const ModerateMemberState.actionInProgress(),
        const ModerateMemberState.actionSuccess(),
      ],
      verify: (_) {
        verify(
          () => repository.kickMember(guildId, memberId),
        ).called(1);
      },
    );

    blocTest<ModerateMemberCubit, ModerateMemberState>(
      'emits [actionInProgress, actionFailure] states for unsuccessful kick',
      build: () {
        when(() => repository.kickMember(guildId, memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MemberFailure.unexpected()),
          ),
        );
        return moderateMemberCubit;
      },
      act: (cubit) => cubit.kickMember(guildId, memberId),
      expect: () => [
        const ModerateMemberState.actionInProgress(),
        const ModerateMemberState.actionFailure(MemberFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.kickMember(guildId, memberId),
        ).called(1);
      },
    );
  });

  group('BanMember', () {
    final guildId = getRandomId();
    final memberId = getRandomId();

    test('initial ModerateMemberState should be ModerateMemberState.initial()',
        () {
      // assert
      expect(
        moderateMemberCubit.state,
        equals(const ModerateMemberState.initial()),
      );
    });

    blocTest<ModerateMemberCubit, ModerateMemberState>(
      'emits [actionInProgress, actionSuccess] states for successful ban',
      build: () {
        when(() => repository.banMember(guildId, memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return moderateMemberCubit;
      },
      act: (cubit) => cubit.banMember(guildId, memberId),
      expect: () => [
        const ModerateMemberState.actionInProgress(),
        const ModerateMemberState.actionSuccess(),
      ],
      verify: (_) {
        verify(
          () => repository.banMember(guildId, memberId),
        ).called(1);
      },
    );

    blocTest<ModerateMemberCubit, ModerateMemberState>(
      'emits [actionInProgress, actionFailure] states for unsuccessful ban',
      build: () {
        when(() => repository.banMember(guildId, memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MemberFailure.unexpected()),
          ),
        );
        return moderateMemberCubit;
      },
      act: (cubit) => cubit.banMember(guildId, memberId),
      expect: () => [
        const ModerateMemberState.actionInProgress(),
        const ModerateMemberState.actionFailure(MemberFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.banMember(guildId, memberId),
        ).called(1);
      },
    );
  });
}
