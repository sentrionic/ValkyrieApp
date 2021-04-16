// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'leave_guild_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LeaveGuildStateTearOff {
  const _$LeaveGuildStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _LeaveFailure leaveFailure(GuildFailure failure) {
    return _LeaveFailure(
      failure,
    );
  }

  _LeaveSuccess leaveSuccess() {
    return const _LeaveSuccess();
  }
}

/// @nodoc
const $LeaveGuildState = _$LeaveGuildStateTearOff();

/// @nodoc
mixin _$LeaveGuildState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(GuildFailure failure) leaveFailure,
    required TResult Function() leaveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LeaveFailure value) leaveFailure,
    required TResult Function(_LeaveSuccess value) leaveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveGuildStateCopyWith<$Res> {
  factory $LeaveGuildStateCopyWith(
          LeaveGuildState value, $Res Function(LeaveGuildState) then) =
      _$LeaveGuildStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LeaveGuildStateCopyWithImpl<$Res>
    implements $LeaveGuildStateCopyWith<$Res> {
  _$LeaveGuildStateCopyWithImpl(this._value, this._then);

  final LeaveGuildState _value;
  // ignore: unused_field
  final $Res Function(LeaveGuildState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LeaveGuildStateCopyWithImpl<$Res>
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
    return 'LeaveGuildState.initial()';
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
    required TResult Function(GuildFailure failure) leaveFailure,
    required TResult Function() leaveSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
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
    required TResult Function(_LeaveFailure value) leaveFailure,
    required TResult Function(_LeaveSuccess value) leaveSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LeaveGuildState {
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
    extends _$LeaveGuildStateCopyWithImpl<$Res>
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
    return 'LeaveGuildState.actionInProgress()';
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
    required TResult Function(GuildFailure failure) leaveFailure,
    required TResult Function() leaveSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
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
    required TResult Function(_LeaveFailure value) leaveFailure,
    required TResult Function(_LeaveSuccess value) leaveSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements LeaveGuildState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$LeaveFailureCopyWith<$Res> {
  factory _$LeaveFailureCopyWith(
          _LeaveFailure value, $Res Function(_LeaveFailure) then) =
      __$LeaveFailureCopyWithImpl<$Res>;
  $Res call({GuildFailure failure});

  $GuildFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LeaveFailureCopyWithImpl<$Res>
    extends _$LeaveGuildStateCopyWithImpl<$Res>
    implements _$LeaveFailureCopyWith<$Res> {
  __$LeaveFailureCopyWithImpl(
      _LeaveFailure _value, $Res Function(_LeaveFailure) _then)
      : super(_value, (v) => _then(v as _LeaveFailure));

  @override
  _LeaveFailure get _value => super._value as _LeaveFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LeaveFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GuildFailure,
    ));
  }

  @override
  $GuildFailureCopyWith<$Res> get failure {
    return $GuildFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LeaveFailure implements _LeaveFailure {
  const _$_LeaveFailure(this.failure);

  @override
  final GuildFailure failure;

  @override
  String toString() {
    return 'LeaveGuildState.leaveFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeaveFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LeaveFailureCopyWith<_LeaveFailure> get copyWith =>
      __$LeaveFailureCopyWithImpl<_LeaveFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(GuildFailure failure) leaveFailure,
    required TResult Function() leaveSuccess,
  }) {
    return leaveFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
    required TResult orElse(),
  }) {
    if (leaveFailure != null) {
      return leaveFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LeaveFailure value) leaveFailure,
    required TResult Function(_LeaveSuccess value) leaveSuccess,
  }) {
    return leaveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
    required TResult orElse(),
  }) {
    if (leaveFailure != null) {
      return leaveFailure(this);
    }
    return orElse();
  }
}

abstract class _LeaveFailure implements LeaveGuildState {
  const factory _LeaveFailure(GuildFailure failure) = _$_LeaveFailure;

  GuildFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LeaveFailureCopyWith<_LeaveFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeaveSuccessCopyWith<$Res> {
  factory _$LeaveSuccessCopyWith(
          _LeaveSuccess value, $Res Function(_LeaveSuccess) then) =
      __$LeaveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LeaveSuccessCopyWithImpl<$Res>
    extends _$LeaveGuildStateCopyWithImpl<$Res>
    implements _$LeaveSuccessCopyWith<$Res> {
  __$LeaveSuccessCopyWithImpl(
      _LeaveSuccess _value, $Res Function(_LeaveSuccess) _then)
      : super(_value, (v) => _then(v as _LeaveSuccess));

  @override
  _LeaveSuccess get _value => super._value as _LeaveSuccess;
}

/// @nodoc
class _$_LeaveSuccess implements _LeaveSuccess {
  const _$_LeaveSuccess();

  @override
  String toString() {
    return 'LeaveGuildState.leaveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LeaveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(GuildFailure failure) leaveFailure,
    required TResult Function() leaveSuccess,
  }) {
    return leaveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
    required TResult orElse(),
  }) {
    if (leaveSuccess != null) {
      return leaveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LeaveFailure value) leaveFailure,
    required TResult Function(_LeaveSuccess value) leaveSuccess,
  }) {
    return leaveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
    required TResult orElse(),
  }) {
    if (leaveSuccess != null) {
      return leaveSuccess(this);
    }
    return orElse();
  }
}

abstract class _LeaveSuccess implements LeaveGuildState {
  const factory _LeaveSuccess() = _$_LeaveSuccess;
}
