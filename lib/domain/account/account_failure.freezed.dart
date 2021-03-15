// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountFailureTearOff {
  const _$AccountFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  InvalidUsername invalidUsername() {
    return const InvalidUsername();
  }

  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

  InvalidPassword invalidPassword() {
    return const InvalidPassword();
  }

  BadRequest badRequest(String message) {
    return BadRequest(
      message,
    );
  }

  ServerError serverError() {
    return const ServerError();
  }
}

/// @nodoc
const $AccountFailure = _$AccountFailureTearOff();

/// @nodoc
mixin _$AccountFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFailureCopyWith<$Res> {
  factory $AccountFailureCopyWith(
          AccountFailure value, $Res Function(AccountFailure) then) =
      _$AccountFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountFailureCopyWithImpl<$Res>
    implements $AccountFailureCopyWith<$Res> {
  _$AccountFailureCopyWithImpl(this._value, this._then);

  final AccountFailure _value;
  // ignore: unused_field
  final $Res Function(AccountFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$AccountFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'AccountFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements AccountFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<$Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername value, $Res Function(InvalidUsername) then) =
      _$InvalidUsernameCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<$Res>
    extends _$AccountFailureCopyWithImpl<$Res>
    implements $InvalidUsernameCopyWith<$Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername _value, $Res Function(InvalidUsername) _then)
      : super(_value, (v) => _then(v as InvalidUsername));

  @override
  InvalidUsername get _value => super._value as InvalidUsername;
}

/// @nodoc
class _$InvalidUsername implements InvalidUsername {
  const _$InvalidUsername();

  @override
  String toString() {
    return 'AccountFailure.invalidUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidUsername);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) {
    return invalidUsername();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername implements AccountFailure {
  const factory InvalidUsername() = _$InvalidUsername;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res>
    extends _$AccountFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc
class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'AccountFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AccountFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AccountFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc
class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AccountFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AccountFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<$Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword value, $Res Function(InvalidPassword) then) =
      _$InvalidPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<$Res>
    extends _$AccountFailureCopyWithImpl<$Res>
    implements $InvalidPasswordCopyWith<$Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword _value, $Res Function(InvalidPassword) _then)
      : super(_value, (v) => _then(v as InvalidPassword));

  @override
  InvalidPassword get _value => super._value as InvalidPassword;
}

/// @nodoc
class _$InvalidPassword implements InvalidPassword {
  const _$InvalidPassword();

  @override
  String toString() {
    return 'AccountFailure.invalidPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) {
    return invalidPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword implements AccountFailure {
  const factory InvalidPassword() = _$InvalidPassword;
}

/// @nodoc
abstract class $BadRequestCopyWith<$Res> {
  factory $BadRequestCopyWith(
          BadRequest value, $Res Function(BadRequest) then) =
      _$BadRequestCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$BadRequestCopyWithImpl<$Res> extends _$AccountFailureCopyWithImpl<$Res>
    implements $BadRequestCopyWith<$Res> {
  _$BadRequestCopyWithImpl(BadRequest _value, $Res Function(BadRequest) _then)
      : super(_value, (v) => _then(v as BadRequest));

  @override
  BadRequest get _value => super._value as BadRequest;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(BadRequest(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$BadRequest implements BadRequest {
  const _$BadRequest(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AccountFailure.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BadRequest &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $BadRequestCopyWith<BadRequest> get copyWith =>
      _$BadRequestCopyWithImpl<BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements AccountFailure {
  const factory BadRequest(String message) = _$BadRequest;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadRequestCopyWith<BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AccountFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AccountFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidUsername,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPassword,
    required TResult Function(String message) badRequest,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidUsername,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPassword,
    TResult Function(String message)? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(InvalidUsername value) invalidUsername,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(InvalidUsername value)? invalidUsername,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AccountFailure {
  const factory ServerError() = _$ServerError;
}
