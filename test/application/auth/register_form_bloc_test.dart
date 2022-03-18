import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/auth/register_form/register_form_bloc.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

import '../../fixtures/faker.dart';

class MockAuthRepository extends Mock implements IAuthFacade {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late RegisterFormBloc registerFormBloc;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    registerFormBloc = RegisterFormBloc(mockAuthRepository);
  });

  group('RegisterForm', () {
    final email = getRandomEmail();
    final username = getRandomName();
    final password = getRandomString(8);

    test('initial RegisterFormState should be RegisterFormState.initial()', () {
      // assert
      expect(registerFormBloc.state, equals(RegisterFormState.initial()));
    });

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits the new [EmailAddress]',
      build: () => registerFormBloc,
      act: (bloc) => bloc.add(RegisterFormEvent.emailChanged(email)),
      expect: () => [
        RegisterFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits the new [Username]',
      build: () => registerFormBloc,
      act: (bloc) => bloc.add(RegisterFormEvent.usernameChanged(username)),
      expect: () => [
        RegisterFormState.initial().copyWith(
          username: Username(username),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits the new [Password]',
      build: () => registerFormBloc,
      act: (bloc) => bloc.add(RegisterFormEvent.passwordChanged(password)),
      expect: () => [
        RegisterFormState.initial().copyWith(
          password: Password(password),
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits [initial] states for successful registration',
      build: () {
        when(
          () => mockAuthRepository.register(
            username: Username(username),
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => right(unit),
          ),
        );
        return registerFormBloc;
      },
      seed: () => RegisterFormState.initial().copyWith(
        username: Username(username),
        emailAddress: EmailAddress(email),
        password: Password(password),
      ),
      act: (bloc) => bloc.add(const RegisterFormEvent.registerPressed()),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        RegisterFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        RegisterFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.register(
            username: Username(username),
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).called(1);
      },
    );

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits [initial] states for unsuccessful registration',
      build: () {
        when(
          () => mockAuthRepository.register(
            username: Username(username),
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).thenAnswer(
          (_) => Future.delayed(
            const Duration(milliseconds: 1),
            () => left(const AuthFailure.serverError()),
          ),
        );
        return registerFormBloc;
      },
      seed: () => RegisterFormState.initial().copyWith(
        username: Username(username),
        emailAddress: EmailAddress(email),
        password: Password(password),
      ),
      act: (bloc) => bloc.add(const RegisterFormEvent.registerPressed()),
      wait: const Duration(milliseconds: 2),
      expect: () => [
        RegisterFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        RegisterFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(password),
          username: Username(username),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption:
              some(left(const AuthFailure.serverError())),
        ),
      ],
      verify: (_) {
        verify(
          () => mockAuthRepository.register(
            username: Username(username),
            emailAddress: EmailAddress(email),
            password: Password(password),
          ),
        ).called(1);
      },
    );

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits [initial] states for invalid password',
      build: () {
        registerFormBloc
          ..add(const RegisterFormEvent.passwordChanged(""))
          ..add(RegisterFormEvent.usernameChanged(username))
          ..add(RegisterFormEvent.emailChanged(email));
        return registerFormBloc;
      },
      skip: 3,
      act: (bloc) => bloc.add(const RegisterFormEvent.registerPressed()),
      expect: () => [
        RegisterFormState.initial().copyWith(
          emailAddress: EmailAddress(email),
          password: Password(""),
          username: Username(username),
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: none(),
        ),
      ],
      verify: (_) {
        verifyNever(
          () => mockAuthRepository.register(
            emailAddress: EmailAddress(email),
            username: Username(username),
            password: Password(""),
          ),
        );
      },
    );

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits [initial] states for invalid email',
      build: () {
        registerFormBloc
          ..add(RegisterFormEvent.passwordChanged(password))
          ..add(RegisterFormEvent.usernameChanged(username))
          ..add(const RegisterFormEvent.emailChanged(""));
        return registerFormBloc;
      },
      skip: 3,
      act: (bloc) => bloc.add(const RegisterFormEvent.registerPressed()),
      expect: () => [],
      verify: (_) {
        verifyNever(
          () => mockAuthRepository.register(
            emailAddress: EmailAddress(""),
            password: Password(password),
            username: Username(username),
          ),
        );
      },
    );

    blocTest<RegisterFormBloc, RegisterFormState>(
      'emits [initial] states for invalid username',
      build: () {
        registerFormBloc
          ..add(RegisterFormEvent.passwordChanged(password))
          ..add(RegisterFormEvent.emailChanged(email))
          ..add(const RegisterFormEvent.usernameChanged(""));
        return registerFormBloc;
      },
      skip: 3,
      act: (bloc) => bloc.add(const RegisterFormEvent.registerPressed()),
      expect: () => [],
      verify: (_) {
        verifyNever(
          () => mockAuthRepository.register(
            emailAddress: EmailAddress(email),
            username: Username(""),
            password: Password(password),
          ),
        );
      },
    );
  });

  tearDown(() => registerFormBloc.close());
}
