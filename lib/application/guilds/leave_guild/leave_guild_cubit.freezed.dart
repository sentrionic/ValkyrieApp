// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leave_guild_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LeaveGuildStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
  }) {
    return initial?.call(this);
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
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$LeaveGuildStateCopyWithImpl<$Res>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _$_ActionInProgress));

  @override
  _$_ActionInProgress get _value => super._value as _$_ActionInProgress;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
  }) {
    return actionInProgress?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
  }) {
    return actionInProgress?.call(this);
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
abstract class _$$_LeaveFailureCopyWith<$Res> {
  factory _$$_LeaveFailureCopyWith(
          _$_LeaveFailure value, $Res Function(_$_LeaveFailure) then) =
      __$$_LeaveFailureCopyWithImpl<$Res>;
  $Res call({GuildFailure failure});

  $GuildFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LeaveFailureCopyWithImpl<$Res>
    extends _$LeaveGuildStateCopyWithImpl<$Res>
    implements _$$_LeaveFailureCopyWith<$Res> {
  __$$_LeaveFailureCopyWithImpl(
      _$_LeaveFailure _value, $Res Function(_$_LeaveFailure) _then)
      : super(_value, (v) => _then(v as _$_LeaveFailure));

  @override
  _$_LeaveFailure get _value => super._value as _$_LeaveFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_LeaveFailure(
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
        (other.runtimeType == runtimeType &&
            other is _$_LeaveFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LeaveFailureCopyWith<_$_LeaveFailure> get copyWith =>
      __$$_LeaveFailureCopyWithImpl<_$_LeaveFailure>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
  }) {
    return leaveFailure?.call(failure);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
  }) {
    return leaveFailure?.call(this);
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
  const factory _LeaveFailure(final GuildFailure failure) = _$_LeaveFailure;

  GuildFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LeaveFailureCopyWith<_$_LeaveFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeaveSuccessCopyWith<$Res> {
  factory _$$_LeaveSuccessCopyWith(
          _$_LeaveSuccess value, $Res Function(_$_LeaveSuccess) then) =
      __$$_LeaveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LeaveSuccessCopyWithImpl<$Res>
    extends _$LeaveGuildStateCopyWithImpl<$Res>
    implements _$$_LeaveSuccessCopyWith<$Res> {
  __$$_LeaveSuccessCopyWithImpl(
      _$_LeaveSuccess _value, $Res Function(_$_LeaveSuccess) _then)
      : super(_value, (v) => _then(v as _$_LeaveSuccess));

  @override
  _$_LeaveSuccess get _value => super._value as _$_LeaveSuccess;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LeaveSuccess);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? leaveFailure,
    TResult Function()? leaveSuccess,
  }) {
    return leaveSuccess?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LeaveFailure value)? leaveFailure,
    TResult Function(_LeaveSuccess value)? leaveSuccess,
  }) {
    return leaveSuccess?.call(this);
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
