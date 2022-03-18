import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/account/update_account/update_account_bloc.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/user_fixtures.dart';

class MockAccountRepository extends Mock implements IAccountRepository {}

void main() {
  late MockAccountRepository mockAccountRepository;
  late UpdateAccountBloc updateAccountBloc;

  setUp(() {
    mockAccountRepository = MockAccountRepository();
    updateAccountBloc = UpdateAccountBloc(mockAccountRepository);
  });

  group('UpdateAccount', () {
    final account = getAccountFixture();

    final newUsername = getRandomName();
    final newEmail = getRandomEmail();

    final updatedAccount = account.copyWith(
      username: Username(newUsername),
      email: EmailAddress(newEmail),
    );

    test('initial UpdateAccountState should be UpdateAccountState.initial()',
        () {
      // assert
      expect(updateAccountBloc.state, equals(UpdateAccountState.initial()));
    });

    blocTest<UpdateAccountBloc, UpdateAccountState>(
      'emits the new [EmailAddress]',
      build: () => updateAccountBloc,
      act: (bloc) => bloc.add(UpdateAccountEvent.emailChanged(newEmail)),
      expect: () => [
        UpdateAccountState.initial().copyWith(
          emailAddress: EmailAddress(newEmail),
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<UpdateAccountBloc, UpdateAccountState>(
      'emits the new [Username]',
      build: () => updateAccountBloc,
      act: (bloc) => bloc.add(UpdateAccountEvent.usernameChanged(newUsername)),
      expect: () => [
        UpdateAccountState.initial().copyWith(
          username: Username(newUsername),
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<UpdateAccountBloc, UpdateAccountState>(
      'emits [initial] states for successful account update',
      build: () {
        when(
          () => mockAccountRepository.updateAccount(
            emailAddress: EmailAddress(newEmail),
            username: Username(newUsername),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(updatedAccount),
          ),
        );
        return updateAccountBloc;
      },
      seed: () => UpdateAccountState.initial().copyWith(
        emailAddress: EmailAddress(newEmail),
        username: Username(newUsername),
      ),
      wait: const Duration(milliseconds: 2),
      act: (bloc) => bloc.add(const UpdateAccountEvent.saved()),
      expect: () => [
        UpdateAccountState.initial().copyWith(
          emailAddress: EmailAddress(newEmail),
          username: Username(newUsername),
          isSaving: true,
          showErrorMessages: false,
          saveFailureOrSuccessOption: none(),
        ),
        UpdateAccountState.initial().copyWith(
          emailAddress: EmailAddress(newEmail),
          username: Username(newUsername),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: some(right(updatedAccount)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAccountRepository.updateAccount(
            emailAddress: EmailAddress(newEmail),
            username: Username(newUsername),
          ),
        ).called(1);
      },
    );

    blocTest<UpdateAccountBloc, UpdateAccountState>(
      'emits [initial] states for unsuccessful account update',
      build: () {
        when(
          () => mockAccountRepository.updateAccount(
            emailAddress: EmailAddress(newEmail),
            username: Username(newUsername),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AccountFailure.unexpected()),
          ),
        );
        return updateAccountBloc;
      },
      seed: () => UpdateAccountState.initial().copyWith(
        emailAddress: EmailAddress(newEmail),
        username: Username(newUsername),
      ),
      wait: const Duration(milliseconds: 2),
      act: (bloc) => bloc.add(const UpdateAccountEvent.saved()),
      expect: () => [
        UpdateAccountState.initial().copyWith(
          emailAddress: EmailAddress(newEmail),
          username: Username(newUsername),
          isSaving: true,
          showErrorMessages: false,
          saveFailureOrSuccessOption: none(),
        ),
        UpdateAccountState.initial().copyWith(
          emailAddress: EmailAddress(newEmail),
          username: Username(newUsername),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption:
              some(left(const AccountFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAccountRepository.updateAccount(
            emailAddress: EmailAddress(newEmail),
            username: Username(newUsername),
          ),
        ).called(1);
      },
    );

    blocTest<UpdateAccountBloc, UpdateAccountState>(
      'emits [initial] states for invalid username',
      build: () {
        updateAccountBloc
          ..add(const UpdateAccountEvent.usernameChanged(""))
          ..add(UpdateAccountEvent.emailChanged(newEmail));
        return updateAccountBloc;
      },
      skip: 2,
      act: (bloc) => bloc.add(const UpdateAccountEvent.saved()),
      expect: () => [
        UpdateAccountState.initial().copyWith(
          emailAddress: EmailAddress(newEmail),
          username: Username(""),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockAccountRepository.updateAccount(
            emailAddress: EmailAddress(newEmail),
            username: Username(""),
          ),
        );
      },
    );

    blocTest<UpdateAccountBloc, UpdateAccountState>(
      'emits [initial] states for invalid email',
      build: () {
        updateAccountBloc
          ..add(UpdateAccountEvent.usernameChanged(newUsername))
          ..add(const UpdateAccountEvent.emailChanged(""));
        return updateAccountBloc;
      },
      skip: 2,
      act: (bloc) => bloc.add(const UpdateAccountEvent.saved()),
      expect: () => [],
      verify: (_) {
        verifyNever(
          () => mockAccountRepository.updateAccount(
            emailAddress: EmailAddress(""),
            username: Username(newUsername),
          ),
        );
      },
    );
  });

  tearDown(() => updateAccountBloc.close());
}
