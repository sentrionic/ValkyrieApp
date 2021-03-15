import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

part 'auth_status_event.dart';
part 'auth_status_state.dart';
part 'auth_status_bloc.freezed.dart';

@injectable
class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  final IAuthFacade _authFacade;

  AuthStatusBloc(this._authFacade) : super(const AuthStatusState.initial());

  @override
  Stream<AuthStatusState> mapEventToState(
    AuthStatusEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final authenticated = await _authFacade.checkAuthenticated();
        yield authenticated
            ? const AuthStatusState.authenticated()
            : const AuthStatusState.unauthenticated();
      },
      signedOut: (e) async* {
        await _authFacade.logout();
        yield const AuthStatusState.unauthenticated();
      },
    );
  }
}
