import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/channels/get_private_channel_members/get_private_channel_members_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

import '../../fixtures/faker.dart';

class MockChannelRepository extends Mock implements IChannelRepository {}

void main() {
  late MockChannelRepository mockChannelRepository;
  late GetPrivateChannelMembersCubit listCubit;

  setUp(() {
    mockChannelRepository = MockChannelRepository();
    listCubit = GetPrivateChannelMembersCubit(mockChannelRepository);
  });

  group('GetPrivateChannelMembers', () {
    final List<String> members = [];
    for (var i = 0; i < 5; i++) {
      members.add(getRandomId());
    }

    final channelId = getRandomId();

    test(
        'initial GetPrivateChannelMembersState should be GetPrivateChannelMembersState.initial()',
        () {
      // assert
      expect(
        listCubit.state,
        equals(const GetPrivateChannelMembersState.initial()),
      );
    });

    blocTest<GetPrivateChannelMembersCubit, GetPrivateChannelMembersState>(
      'emits [fetchInProgress, fetchSuccess] states for successful member list fetch',
      build: () {
        when(() => mockChannelRepository.getPrivateChannelMembers(channelId))
            .thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(members),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getPrivateChannelMembers(channelId),
      expect: () => [
        const GetPrivateChannelMembersState.fetchInProgress(),
        GetPrivateChannelMembersState.fetchSuccess(members)
      ],
      verify: (_) {
        verify(() => mockChannelRepository.getPrivateChannelMembers(channelId))
            .called(1);
      },
    );

    blocTest<GetPrivateChannelMembersCubit, GetPrivateChannelMembersState>(
      'emits [fetchInProgress, fetchFailure] states for unsuccessful member list fetch',
      build: () {
        when(() => mockChannelRepository.getPrivateChannelMembers(channelId))
            .thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const ChannelFailure.unexpected()),
          ),
        );
        return listCubit;
      },
      act: (cubit) => cubit.getPrivateChannelMembers(channelId),
      expect: () => [
        const GetPrivateChannelMembersState.fetchInProgress(),
        const GetPrivateChannelMembersState.fetchFailure(
          ChannelFailure.unexpected(),
        )
      ],
      verify: (_) {
        verify(() => mockChannelRepository.getPrivateChannelMembers(channelId))
            .called(1);
      },
    );
  });
}
