// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() registerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(RegisterPressed value) registerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() registerPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(RegisterPressed value) registerPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(final String email) = _$EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() registerPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(RegisterPressed value) registerPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(final String password) = _$PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedCopyWith<$Res> {
  factory _$$UsernameChangedCopyWith(
          _$UsernameChanged value, $Res Function(_$UsernameChanged) then) =
      __$$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$UsernameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$$UsernameChangedCopyWith<$Res> {
  __$$UsernameChangedCopyWithImpl(
      _$UsernameChanged _value, $Res Function(_$UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$UsernameChanged));

  @override
  _$UsernameChanged get _value => super._value as _$UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'RegisterFormEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      __$$UsernameChangedCopyWithImpl<_$UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() registerPressed,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(RegisterPressed value) registerPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements RegisterFormEvent {
  const factory UsernameChanged(final String username) = _$UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPressedCopyWith<$Res> {
  factory _$$RegisterPressedCopyWith(
          _$RegisterPressed value, $Res Function(_$RegisterPressed) then) =
      __$$RegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPressedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements _$$RegisterPressedCopyWith<$Res> {
  __$$RegisterPressedCopyWithImpl(
      _$RegisterPressed _value, $Res Function(_$RegisterPressed) _then)
      : super(_value, (v) => _then(v as _$RegisterPressed));

  @override
  _$RegisterPressed get _value => super._value as _$RegisterPressed;
}

/// @nodoc

class _$RegisterPressed implements RegisterPressed {
  const _$RegisterPressed();

  @override
  String toString() {
    return 'RegisterFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() registerPressed,
  }) {
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
  }) {
    return registerPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(RegisterPressed value) registerPressed,
  }) {
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
  }) {
    return registerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterPressed implements RegisterFormEvent {
  const factory RegisterPressed() = _$RegisterPressed;
}

/// @nodoc
mixin _$RegisterFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$_RegisterFormStateCopyWith(_$_RegisterFormState value,
          $Res Function(_$_RegisterFormState) then) =
      __$$_RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$$_RegisterFormStateCopyWith<$Res> {
  __$$_RegisterFormStateCopyWithImpl(
      _$_RegisterFormState _value, $Res Function(_$_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _$_RegisterFormState));

  @override
  _$_RegisterFormState get _value => super._value as _$_RegisterFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_RegisterFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {required this.emailAddress,
      required this.username,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterFormState(emailAddress: $emailAddress, username: $username, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      __$$_RegisterFormStateCopyWithImpl<_$_RegisterFormState>(
          this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
      {required final EmailAddress emailAddress,
      required final Username username,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_RegisterFormState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
