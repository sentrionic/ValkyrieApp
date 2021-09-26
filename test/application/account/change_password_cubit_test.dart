import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/account/change_password/change_password_cubit.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

import '../../fixtures/faker.dart';

class MockAuthRepository extends Mock implements IAuthFacade {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late ChangePasswordCubit changePasswordCubit;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    changePasswordCubit = ChangePasswordCubit(mockAuthRepository);
  });

  void _verifyNeverChangePasswordRepositoryCall(
    String oldPassword,
    String newPassword,
    String confirmPassword,
  ) {
    verifyNever(
      () => mockAuthRepository.changePassword(
        oldPassword: Password(oldPassword),
        newPassword: Password(newPassword),
        confirmNewPassword: Password(confirmPassword),
      ),
    );
  }

  group('OldPasswordChanged', () {
    final password = getRandomString(8);

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits the old [Password]',
      build: () => changePasswordCubit,
      act: (cubit) => cubit.oldPasswordChanged(password),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(password),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('NewPasswordChanged', () {
    final password = getRandomString(8);

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits the new [Password]',
      build: () => changePasswordCubit,
      act: (cubit) => cubit.newPasswordChanged(password),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          newPassword: Password(password),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('ConfirmNewPasswordChanged', () {
    final password = getRandomString(8);

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits the confirm [Password]',
      build: () => changePasswordCubit,
      act: (cubit) => cubit.confirmNewPasswordChanged(password),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          confirmNewPassword: Password(password),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );
  });

  group('SubmitChangePassword', () {
    final oldPassword = getRandomString(8);
    final newPassword = getRandomString(8);
    final invalidConfirmPassword = getRandomString(9);

    test('initial ChangePasswordState should be ChangePasswordState.initial()',
        () {
      // assert
      expect(changePasswordCubit.state, equals(ChangePasswordState.initial()));
    });

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits [initial] states for successful password change',
      build: () {
        when(
          () => mockAuthRepository.changePassword(
            oldPassword: Password(oldPassword),
            newPassword: Password(newPassword),
            confirmNewPassword: Password(newPassword),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        changePasswordCubit.oldPasswordChanged(oldPassword);
        changePasswordCubit.newPasswordChanged(newPassword);
        changePasswordCubit.confirmNewPasswordChanged(newPassword);
        return changePasswordCubit;
      },
      act: (cubit) => cubit.submitPasswordChange(),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
          isSubmitting: true,
        ),
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.changePassword(
            oldPassword: Password(oldPassword),
            newPassword: Password(newPassword),
            confirmNewPassword: Password(newPassword),
          ),
        ).called(1);
      },
    );

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits [initial] states for unsuccessful password change',
      build: () {
        when(
          () => mockAuthRepository.changePassword(
            oldPassword: Password(oldPassword),
            newPassword: Password(newPassword),
            confirmNewPassword: Password(newPassword),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AuthFailure.serverError()),
          ),
        );
        changePasswordCubit.oldPasswordChanged(oldPassword);
        changePasswordCubit.newPasswordChanged(newPassword);
        changePasswordCubit.confirmNewPasswordChanged(newPassword);
        return changePasswordCubit;
      },
      act: (cubit) => cubit.submitPasswordChange(),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
          isSubmitting: true,
        ),
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption:
              some(left(const AuthFailure.serverError())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.changePassword(
            oldPassword: Password(oldPassword),
            newPassword: Password(newPassword),
            confirmNewPassword: Password(newPassword),
          ),
        ).called(1);
      },
    );

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits [initial] states for invalid old password',
      build: () {
        changePasswordCubit.oldPasswordChanged("");
        changePasswordCubit.newPasswordChanged(newPassword);
        changePasswordCubit.confirmNewPasswordChanged(newPassword);
        return changePasswordCubit;
      },
      act: (cubit) => cubit.submitPasswordChange(),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(""),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(newPassword),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        _verifyNeverChangePasswordRepositoryCall("", newPassword, newPassword);
      },
    );

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits [initial] states for invalid new password',
      build: () {
        changePasswordCubit.oldPasswordChanged(oldPassword);
        changePasswordCubit.newPasswordChanged("");
        changePasswordCubit.confirmNewPasswordChanged(newPassword);
        return changePasswordCubit;
      },
      act: (cubit) => cubit.submitPasswordChange(),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(oldPassword),
          newPassword: Password(""),
          confirmNewPassword: Password(newPassword),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        _verifyNeverChangePasswordRepositoryCall(oldPassword, "", newPassword);
      },
    );

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits [initial] states for invalid confirm new password',
      build: () {
        changePasswordCubit.oldPasswordChanged(oldPassword);
        changePasswordCubit.newPasswordChanged(newPassword);
        changePasswordCubit.confirmNewPasswordChanged("");
        return changePasswordCubit;
      },
      act: (cubit) => cubit.submitPasswordChange(),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(""),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        _verifyNeverChangePasswordRepositoryCall(oldPassword, newPassword, "");
      },
    );

    blocTest<ChangePasswordCubit, ChangePasswordState>(
      'emits [initial] states for not matching new password',
      build: () {
        changePasswordCubit.oldPasswordChanged(oldPassword);
        changePasswordCubit.newPasswordChanged(newPassword);
        changePasswordCubit.confirmNewPasswordChanged(invalidConfirmPassword);
        return changePasswordCubit;
      },
      act: (cubit) => cubit.submitPasswordChange(),
      expect: () => [
        ChangePasswordState.initial().copyWith(
          oldPassword: Password(oldPassword),
          newPassword: Password(newPassword),
          confirmNewPassword: Password(invalidConfirmPassword),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption:
              some(left(const AuthFailure.passwordsDontMatch())),
        ),
      ],
      verify: (_) {
        _verifyNeverChangePasswordRepositoryCall(
          oldPassword,
          newPassword,
          invalidConfirmPassword,
        );
      },
    );
  });
}
