import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';

import '../../fixtures/user_fixtures.dart';

class MockAccountRepository extends Mock implements IAccountRepository {}

void main() {
  late MockAccountRepository mockAccountRepository;
  late AccountCubit accountCubit;

  setUp(() {
    mockAccountRepository = MockAccountRepository();
    accountCubit = AccountCubit(mockAccountRepository);
  });

  group('GetAccount', () {
    final account = getAccountFixture();

    test('initial AccountState should be AccountState.initial()', () {
      // assert
      expect(accountCubit.state, equals(const AccountState.initial()));
    });

    blocTest<AccountCubit, AccountState>(
      'emits [loadInProgress, loadSuccess] states for successful account fetch',
      build: () {
        when(() => mockAccountRepository.getAccount()).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(account),
          ),
        );
        return accountCubit;
      },
      act: (cubit) => cubit.getAccount(),
      expect: () => [
        const AccountState.loadInProgress(),
        AccountState.loadSuccess(account)
      ],
      verify: (_) {
        verify(() => mockAccountRepository.getAccount()).called(1);
      },
    );

    blocTest<AccountCubit, AccountState>(
      'emits [loadInProgress, loadFailure] states for unsuccessful account fetch',
      build: () {
        when(() => mockAccountRepository.getAccount()).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AccountFailure.unexpected()),
          ),
        );
        return accountCubit;
      },
      act: (cubit) => cubit.getAccount(),
      expect: () => [
        const AccountState.loadInProgress(),
        const AccountState.loadFailure(AccountFailure.unexpected())
      ],
    );

    group('UpdateAccount', () {
      final account = getAccountFixture();
      blocTest<AccountCubit, AccountState>(
        'emits the updated account',
        build: () => accountCubit,
        act: (cubit) => cubit.updateAccount(account),
        expect: () => [AccountState.loadSuccess(account)],
      );
    });
  });
}
