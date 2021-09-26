import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/guilds/get_appearance/get_appearance_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import '../../fixtures/faker.dart';

class MockMemberRepository extends Mock implements IMemberRepository {}

void main() {
  late MockMemberRepository mockMemberRepository;
  late GetAppearanceCubit appearanceCubit;

  setUp(() {
    mockMemberRepository = MockMemberRepository();
    appearanceCubit = GetAppearanceCubit(mockMemberRepository);
  });

  group('GetAppearance', () {
    final appearance = GuildAppearance(
      nickname: Nickname(getRandomName()),
      color: HexColor("#fff"),
    );
    final id = getRandomId();

    test('initial GetAppearanceState should be GetAppearanceState.initial()',
        () {
      // assert
      expect(appearanceCubit.state, equals(const GetAppearanceState.initial()));
    });

    blocTest<GetAppearanceCubit, GetAppearanceState>(
      'emits [loadInProgress, loadSuccess] states for successful appearance fetch',
      build: () {
        when(() => mockMemberRepository.getGuildAppearance(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(appearance),
          ),
        );
        return appearanceCubit;
      },
      act: (cubit) => cubit.getGuildAppearance(id),
      expect: () => [
        const GetAppearanceState.loadInProgress(),
        GetAppearanceState.loadSuccess(appearance)
      ],
      verify: (_) {
        verify(() => mockMemberRepository.getGuildAppearance(id)).called(1);
      },
    );

    blocTest<GetAppearanceCubit, GetAppearanceState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful appearance fetch',
      build: () {
        when(() => mockMemberRepository.getGuildAppearance(id)).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const MemberFailure.unexpected()),
          ),
        );
        return appearanceCubit;
      },
      act: (cubit) => cubit.getGuildAppearance(id),
      expect: () => [
        const GetAppearanceState.loadInProgress(),
        const GetAppearanceState.loadFailure(MemberFailure.unexpected())
      ],
    );
  });
}
