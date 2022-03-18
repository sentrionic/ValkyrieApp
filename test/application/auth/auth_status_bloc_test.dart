import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';

import '../account/change_password_cubit_test.dart';

void main() {
  late MockAuthRepository mockAuthRepository;
  late AuthStatusBloc authStatusBloc;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    authStatusBloc = AuthStatusBloc(mockAuthRepository);
  });

  group('AuthStatus', () {
    group('AuthCheckRequested', () {
      test('initial AuthStatusState should be AuthStatusState.initial()', () {
        // assert
        expect(authStatusBloc.state, equals(const AuthStatusState.initial()));
      });

      blocTest<AuthStatusBloc, AuthStatusState>(
        'yields [authenticated] when the user is authenticated',
        build: () {
          when(
            () => mockAuthRepository.checkAuthenticated(),
          ).thenAnswer(
            (_) => Future.delayed(
              const Duration(milliseconds: 1),
              () => true,
            ),
          );
          return authStatusBloc;
        },
        act: (bloc) => bloc.add(const AuthStatusEvent.authCheckRequested()),
        expect: () => [
          const AuthStatusState.authenticated(),
        ],
        wait: const Duration(milliseconds: 2),
        verify: (_) {
          verify(
            () => mockAuthRepository.checkAuthenticated(),
          ).called(1);
        },
      );

      blocTest<AuthStatusBloc, AuthStatusState>(
        'yields [unauthenticated] when the user is unauthenticated',
        build: () {
          when(
            () => mockAuthRepository.checkAuthenticated(),
          ).thenAnswer(
            (_) => Future.delayed(
              const Duration(milliseconds: 1),
              () => false,
            ),
          );
          return authStatusBloc;
        },
        act: (bloc) => bloc.add(const AuthStatusEvent.authCheckRequested()),
        wait: const Duration(milliseconds: 2),
        expect: () => [
          const AuthStatusState.unauthenticated(),
        ],
        verify: (_) {
          verify(
            () => mockAuthRepository.checkAuthenticated(),
          ).called(1);
        },
      );
    });

    group('SignedOut', () {
      blocTest<AuthStatusBloc, AuthStatusState>(
        'yields [unauthenticated] when the user signs out',
        build: () {
          when(
            () => mockAuthRepository.logout(),
          ).thenAnswer(
            (_) => Future.delayed(
              const Duration(milliseconds: 1),
              () => unit,
            ),
          );
          return authStatusBloc;
        },
        act: (bloc) => bloc.add(const AuthStatusEvent.signedOut()),
        wait: const Duration(milliseconds: 2),
        expect: () => [
          const AuthStatusState.unauthenticated(),
        ],
        verify: (_) {
          verify(
            () => mockAuthRepository.logout(),
          ).called(1);
        },
      );
    });
  });
}
