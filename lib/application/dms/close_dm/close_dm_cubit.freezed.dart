// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'close_dm_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CloseDMStateTearOff {
  const _$CloseDMStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _CloseFailure closeFailure(DMChannelFailure failure) {
    return _CloseFailure(
      failure,
    );
  }

  _CloseSuccess closeSuccess() {
    return const _CloseSuccess();
  }
}

/// @nodoc
const $CloseDMState = _$CloseDMStateTearOff();

/// @nodoc
mixin _$CloseDMState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DMChannelFailure failure) closeFailure,
    required TResult Function() closeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CloseFailure value) closeFailure,
    required TResult Function(_CloseSuccess value) closeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloseDMStateCopyWith<$Res> {
  factory $CloseDMStateCopyWith(
          CloseDMState value, $Res Function(CloseDMState) then) =
      _$CloseDMStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseDMStateCopyWithImpl<$Res> implements $CloseDMStateCopyWith<$Res> {
  _$CloseDMStateCopyWithImpl(this._value, this._then);

  final CloseDMState _value;
  // ignore: unused_field
  final $Res Function(CloseDMState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CloseDMStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CloseDMState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DMChannelFailure failure) closeFailure,
    required TResult Function() closeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CloseFailure value) closeFailure,
    required TResult Function(_CloseSuccess value) closeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CloseDMState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$CloseDMStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'CloseDMState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DMChannelFailure failure) closeFailure,
    required TResult Function() closeSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CloseFailure value) closeFailure,
    required TResult Function(_CloseSuccess value) closeSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements CloseDMState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$CloseFailureCopyWith<$Res> {
  factory _$CloseFailureCopyWith(
          _CloseFailure value, $Res Function(_CloseFailure) then) =
      __$CloseFailureCopyWithImpl<$Res>;
  $Res call({DMChannelFailure failure});

  $DMChannelFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CloseFailureCopyWithImpl<$Res> extends _$CloseDMStateCopyWithImpl<$Res>
    implements _$CloseFailureCopyWith<$Res> {
  __$CloseFailureCopyWithImpl(
      _CloseFailure _value, $Res Function(_CloseFailure) _then)
      : super(_value, (v) => _then(v as _CloseFailure));

  @override
  _CloseFailure get _value => super._value as _CloseFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CloseFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DMChannelFailure,
    ));
  }

  @override
  $DMChannelFailureCopyWith<$Res> get failure {
    return $DMChannelFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CloseFailure implements _CloseFailure {
  const _$_CloseFailure(this.failure);

  @override
  final DMChannelFailure failure;

  @override
  String toString() {
    return 'CloseDMState.closeFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CloseFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CloseFailureCopyWith<_CloseFailure> get copyWith =>
      __$CloseFailureCopyWithImpl<_CloseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DMChannelFailure failure) closeFailure,
    required TResult Function() closeSuccess,
  }) {
    return closeFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
  }) {
    return closeFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
    required TResult orElse(),
  }) {
    if (closeFailure != null) {
      return closeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CloseFailure value) closeFailure,
    required TResult Function(_CloseSuccess value) closeSuccess,
  }) {
    return closeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
  }) {
    return closeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
    required TResult orElse(),
  }) {
    if (closeFailure != null) {
      return closeFailure(this);
    }
    return orElse();
  }
}

abstract class _CloseFailure implements CloseDMState {
  const factory _CloseFailure(DMChannelFailure failure) = _$_CloseFailure;

  DMChannelFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CloseFailureCopyWith<_CloseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CloseSuccessCopyWith<$Res> {
  factory _$CloseSuccessCopyWith(
          _CloseSuccess value, $Res Function(_CloseSuccess) then) =
      __$CloseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseSuccessCopyWithImpl<$Res> extends _$CloseDMStateCopyWithImpl<$Res>
    implements _$CloseSuccessCopyWith<$Res> {
  __$CloseSuccessCopyWithImpl(
      _CloseSuccess _value, $Res Function(_CloseSuccess) _then)
      : super(_value, (v) => _then(v as _CloseSuccess));

  @override
  _CloseSuccess get _value => super._value as _CloseSuccess;
}

/// @nodoc

class _$_CloseSuccess implements _CloseSuccess {
  const _$_CloseSuccess();

  @override
  String toString() {
    return 'CloseDMState.closeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CloseSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DMChannelFailure failure) closeFailure,
    required TResult Function() closeSuccess,
  }) {
    return closeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
  }) {
    return closeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DMChannelFailure failure)? closeFailure,
    TResult Function()? closeSuccess,
    required TResult orElse(),
  }) {
    if (closeSuccess != null) {
      return closeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CloseFailure value) closeFailure,
    required TResult Function(_CloseSuccess value) closeSuccess,
  }) {
    return closeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
  }) {
    return closeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CloseFailure value)? closeFailure,
    TResult Function(_CloseSuccess value)? closeSuccess,
    required TResult orElse(),
  }) {
    if (closeSuccess != null) {
      return closeSuccess(this);
    }
    return orElse();
  }
}

abstract class _CloseSuccess implements CloseDMState {
  const factory _CloseSuccess() = _$_CloseSuccess;
}
