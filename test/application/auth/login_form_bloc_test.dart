import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/auth/login_form/login_form_bloc.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

import '../../fixtures/faker.dart';

class MockAuthRepository extends Mock implements IAuthFacade {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late LoginFormBloc loginFormBloc;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginFormBloc = LoginFormBloc(mockAuthRepository);
  });

  group('LoginForm', () {
    final email = getRandomEmail();
    final password = getRandomString(8);

    test('initial LoginFormState should be LoginFormState.initial()', () {
      // assert
      expect(loginFormBloc.state, equals(LoginFormState.initial()));
    });

    blocTest<LoginFormBloc, LoginFormState>(
      'emits the new [EmailAddress]',
      build: () => loginFormBloc,
      act: (bloc) => bloc.add(LoginFormEvent.emailChanged(email)),
      expect: () => [
        LoginFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<LoginFormBloc, LoginFormState>(
      'emits the new [Password]',
      build: () => loginFormBloc,
      act: (bloc) => bloc.add(LoginFormEvent.passwordChanged(password)),
      expect: () => [
        LoginFormState.initial().copyWith(
          password: Password(password),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<LoginFormBloc, LoginFormState>(
      'emits [initial] states for successful login',
      build: () {
        when(
          () => mockAuthRepository.login(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return loginFormBloc;
      },
      seed: () => LoginFormState.initial().copyWith(
        password: Password(password),
        emailAddress: EmailAddress(email),
      ),
      act: (bloc) => bloc.add(const LoginFormEvent.loginPressed()),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        LoginFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        LoginFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.login(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).called(1);
      },
    );

    blocTest<LoginFormBloc, LoginFormState>(
      'emits [initial] states for unsuccessful login',
      build: () {
        when(
          () => mockAuthRepository.login(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AuthFailure.serverError()),
          ),
        );
        return loginFormBloc;
      },
      act: (bloc) => bloc.add(const LoginFormEvent.loginPressed()),
      seed: () => LoginFormState.initial().copyWith(
        password: Password(password),
        emailAddress: EmailAddress(email),
      ),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        LoginFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        LoginFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption:
              some(left(const AuthFailure.serverError())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.login(
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).called(1);
      },
    );

    blocTest<LoginFormBloc, LoginFormState>(
      'emits [initial] states for invalid password',
      build: () {
        loginFormBloc
          ..add(const LoginFormEvent.passwordChanged(""))
          ..add(LoginFormEvent.emailChanged(email));
        return loginFormBloc;
      },
      skip: 2,
      act: (bloc) => bloc.add(const LoginFormEvent.loginPressed()),
      expect: () => [
        LoginFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(""),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockAuthRepository.login(
            emailAddress: EmailAddress(email),
            password: Password(""),
          ),
        );
      },
    );

    blocTest<LoginFormBloc, LoginFormState>(
      'emits [initial] states for invalid email',
      build: () {
        loginFormBloc
          ..add(LoginFormEvent.passwordChanged(password))
          ..add(const LoginFormEvent.emailChanged(""));
        return loginFormBloc;
      },
      skip: 2,
      act: (bloc) => bloc.add(const LoginFormEvent.loginPressed()),
      expect: () => [],
      verify: (_) {
        verifyNever(
          () => mockAuthRepository.login(
            emailAddress: EmailAddress(""),
            password: Password(password),
          ),
        );
      },
    );
  });

  tearDown(() => loginFormBloc.close());
}
