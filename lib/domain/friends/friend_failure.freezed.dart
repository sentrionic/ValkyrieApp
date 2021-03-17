// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendFailureTearOff {
  const _$FriendFailureTearOff();

  _FriendFailure unexpected() {
    return const _FriendFailure();
  }
}

/// @nodoc
const $FriendFailure = _$FriendFailureTearOff();

/// @nodoc
mixin _$FriendFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FriendFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendFailureCopyWith<$Res> {
  factory $FriendFailureCopyWith(
          FriendFailure value, $Res Function(FriendFailure) then) =
      _$FriendFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendFailureCopyWithImpl<$Res>
    implements $FriendFailureCopyWith<$Res> {
  _$FriendFailureCopyWithImpl(this._value, this._then);

  final FriendFailure _value;
  // ignore: unused_field
  final $Res Function(FriendFailure) _then;
}

/// @nodoc
abstract class _$FriendFailureCopyWith<$Res> {
  factory _$FriendFailureCopyWith(
          _FriendFailure value, $Res Function(_FriendFailure) then) =
      __$FriendFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FriendFailureCopyWithImpl<$Res>
    extends _$FriendFailureCopyWithImpl<$Res>
    implements _$FriendFailureCopyWith<$Res> {
  __$FriendFailureCopyWithImpl(
      _FriendFailure _value, $Res Function(_FriendFailure) _then)
      : super(_value, (v) => _then(v as _FriendFailure));

  @override
  _FriendFailure get _value => super._value as _FriendFailure;
}

/// @nodoc
class _$_FriendFailure implements _FriendFailure {
  const _$_FriendFailure();

  @override
  String toString() {
    return 'FriendFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FriendFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
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
    required TResult Function(_FriendFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _FriendFailure implements FriendFailure {
  const factory _FriendFailure() = _$_FriendFailure;
}
