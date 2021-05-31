// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'field_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FieldErrorTearOff {
  const _$FieldErrorTearOff();

  _FieldError call({required String field, required String message}) {
    return _FieldError(
      field: field,
      message: message,
    );
  }
}

/// @nodoc
const $FieldError = _$FieldErrorTearOff();

/// @nodoc
mixin _$FieldError {
  String get field => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldErrorCopyWith<FieldError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldErrorCopyWith<$Res> {
  factory $FieldErrorCopyWith(
          FieldError value, $Res Function(FieldError) then) =
      _$FieldErrorCopyWithImpl<$Res>;
  $Res call({String field, String message});
}

/// @nodoc
class _$FieldErrorCopyWithImpl<$Res> implements $FieldErrorCopyWith<$Res> {
  _$FieldErrorCopyWithImpl(this._value, this._then);

  final FieldError _value;
  // ignore: unused_field
  final $Res Function(FieldError) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FieldErrorCopyWith<$Res> implements $FieldErrorCopyWith<$Res> {
  factory _$FieldErrorCopyWith(
          _FieldError value, $Res Function(_FieldError) then) =
      __$FieldErrorCopyWithImpl<$Res>;
  @override
  $Res call({String field, String message});
}

/// @nodoc
class __$FieldErrorCopyWithImpl<$Res> extends _$FieldErrorCopyWithImpl<$Res>
    implements _$FieldErrorCopyWith<$Res> {
  __$FieldErrorCopyWithImpl(
      _FieldError _value, $Res Function(_FieldError) _then)
      : super(_value, (v) => _then(v as _FieldError));

  @override
  _FieldError get _value => super._value as _FieldError;

  @override
  $Res call({
    Object? field = freezed,
    Object? message = freezed,
  }) {
    return _then(_FieldError(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FieldError extends _FieldError {
  const _$_FieldError({required this.field, required this.message}) : super._();

  @override
  final String field;
  @override
  final String message;

  @override
  String toString() {
    return 'FieldError(field: $field, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldError &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FieldErrorCopyWith<_FieldError> get copyWith =>
      __$FieldErrorCopyWithImpl<_FieldError>(this, _$identity);
}

abstract class _FieldError extends FieldError {
  const factory _FieldError({required String field, required String message}) =
      _$_FieldError;
  const _FieldError._() : super._();

  @override
  String get field => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FieldErrorCopyWith<_FieldError> get copyWith =>
      throw _privateConstructorUsedError;
}
