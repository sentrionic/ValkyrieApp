import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/members/unban_user/unban_user_cubit.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import '../../fixtures/faker.dart';

class MockMemberRepository extends Mock implements IMemberRepository {}

void main() {
  late MockMemberRepository repository;
  late UnbanUserCubit unbanUserCubit;

  setUp(() {
    repository = MockMemberRepository();
    unbanUserCubit = UnbanUserCubit(repository);
  });

  group('UnbanMember', () {
    final guildId = getRandomId();
    final memberId = getRandomId();

    test('initial UnbanUserState should be UnbanUserState.initial()', () {
      // assert
      expect(
        unbanUserCubit.state,
        equals(const UnbanUserState.initial()),
      );
    });

    blocTest<UnbanUserCubit, UnbanUserState>(
      'emits [actionInProgress, unbanSuccess] states for successful unban',
      build: () {
        when(() => repository.unbanMember(guildId, memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return unbanUserCubit;
      },
      act: (cubit) => cubit.unbanMember(guildId, memberId),
      expect: () => [
        const UnbanUserState.actionInProgress(),
        UnbanUserState.unbanSuccess(memberId),
      ],
      verify: (_) {
        verify(
          () => repository.unbanMember(guildId, memberId),
        ).called(1);
      },
    );

    blocTest<UnbanUserCubit, UnbanUserState>(
      'emits [actionInProgress, unbanFailure] states for unsuccessful unban',
      build: () {
        when(() => repository.unbanMember(guildId, memberId)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MemberFailure.unexpected()),
          ),
        );
        return unbanUserCubit;
      },
      act: (cubit) => cubit.unbanMember(guildId, memberId),
      expect: () => [
        const UnbanUserState.actionInProgress(),
        const UnbanUserState.unbanFailure(MemberFailure.unexpected()),
      ],
      verify: (_) {
        verify(
          () => repository.unbanMember(guildId, memberId),
        ).called(1);
      },
    );
  });
}
