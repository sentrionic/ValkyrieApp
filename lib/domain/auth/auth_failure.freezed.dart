// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordsDontMatch,
    required TResult Function() invalidCredentials,
    required TResult Function() serverError,
    required TResult Function(String error) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BadRequest value) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$_PasswordsDontMatchCopyWith<$Res> {
  factory _$$_PasswordsDontMatchCopyWith(_$_PasswordsDontMatch value,
          $Res Function(_$_PasswordsDontMatch) then) =
      __$$_PasswordsDontMatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordsDontMatchCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_PasswordsDontMatchCopyWith<$Res> {
  __$$_PasswordsDontMatchCopyWithImpl(
      _$_PasswordsDontMatch _value, $Res Function(_$_PasswordsDontMatch) _then)
      : super(_value, (v) => _then(v as _$_PasswordsDontMatch));

  @override
  _$_PasswordsDontMatch get _value => super._value as _$_PasswordsDontMatch;
}

/// @nodoc

class _$_PasswordsDontMatch implements _PasswordsDontMatch {
  const _$_PasswordsDontMatch();

  @override
  String toString() {
    return 'AuthFailure.passwordsDontMatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordsDontMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordsDontMatch,
    required TResult Function() invalidCredentials,
    required TResult Function() serverError,
    required TResult Function(String error) badRequest,
  }) {
    return passwordsDontMatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
  }) {
    return passwordsDontMatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return passwordsDontMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return passwordsDontMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch(this);
    }
    return orElse();
  }
}

abstract class _PasswordsDontMatch implements AuthFailure {
  const factory _PasswordsDontMatch() = _$_PasswordsDontMatch;
}

/// @nodoc
abstract class _$$_InvalidCredentialsCopyWith<$Res> {
  factory _$$_InvalidCredentialsCopyWith(_$_InvalidCredentials value,
          $Res Function(_$_InvalidCredentials) then) =
      __$$_InvalidCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidCredentialsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_InvalidCredentialsCopyWith<$Res> {
  __$$_InvalidCredentialsCopyWithImpl(
      _$_InvalidCredentials _value, $Res Function(_$_InvalidCredentials) _then)
      : super(_value, (v) => _then(v as _$_InvalidCredentials));

  @override
  _$_InvalidCredentials get _value => super._value as _$_InvalidCredentials;
}

/// @nodoc

class _$_InvalidCredentials implements _InvalidCredentials {
  const _$_InvalidCredentials();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordsDontMatch,
    required TResult Function() invalidCredentials,
    required TResult Function() serverError,
    required TResult Function(String error) badRequest,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class _InvalidCredentials implements AuthFailure {
  const factory _InvalidCredentials() = _$_InvalidCredentials;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordsDontMatch,
    required TResult Function() invalidCredentials,
    required TResult Function() serverError,
    required TResult Function(String error) badRequest,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
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
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_BadRequestCopyWith<$Res> {
  factory _$$_BadRequestCopyWith(
          _$_BadRequest value, $Res Function(_$_BadRequest) then) =
      __$$_BadRequestCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_BadRequestCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_BadRequestCopyWith<$Res> {
  __$$_BadRequestCopyWithImpl(
      _$_BadRequest _value, $Res Function(_$_BadRequest) _then)
      : super(_value, (v) => _then(v as _$_BadRequest));

  @override
  _$_BadRequest get _value => super._value as _$_BadRequest;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_BadRequest(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthFailure.badRequest(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BadRequest &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_BadRequestCopyWith<_$_BadRequest> get copyWith =>
      __$$_BadRequestCopyWithImpl<_$_BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordsDontMatch,
    required TResult Function() invalidCredentials,
    required TResult Function() serverError,
    required TResult Function(String error) badRequest,
  }) {
    return badRequest(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
  }) {
    return badRequest?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordsDontMatch,
    TResult Function()? invalidCredentials,
    TResult Function()? serverError,
    TResult Function(String error)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements AuthFailure {
  const factory _BadRequest(final String error) = _$_BadRequest;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_BadRequestCopyWith<_$_BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
