// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'close_dm_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DMChannelFailure failure)? closeFailure,
    TResult? Function()? closeSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CloseFailure value)? closeFailure,
    TResult? Function(_CloseSuccess value)? closeSuccess,
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
      _$CloseDMStateCopyWithImpl<$Res, CloseDMState>;
}

/// @nodoc
class _$CloseDMStateCopyWithImpl<$Res, $Val extends CloseDMState>
    implements $CloseDMStateCopyWith<$Res> {
  _$CloseDMStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CloseDMStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    required TResult Function(DMChannelFailure failure) closeFailure,
    required TResult Function() closeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DMChannelFailure failure)? closeFailure,
    TResult? Function()? closeSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CloseFailure value)? closeFailure,
    TResult? Function(_CloseSuccess value)? closeSuccess,
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
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$CloseDMStateCopyWithImpl<$Res, _$_ActionInProgress>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, _then);
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
    required TResult Function(DMChannelFailure failure) closeFailure,
    required TResult Function() closeSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DMChannelFailure failure)? closeFailure,
    TResult? Function()? closeSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CloseFailure value)? closeFailure,
    TResult? Function(_CloseSuccess value)? closeSuccess,
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
abstract class _$$_CloseFailureCopyWith<$Res> {
  factory _$$_CloseFailureCopyWith(
          _$_CloseFailure value, $Res Function(_$_CloseFailure) then) =
      __$$_CloseFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({DMChannelFailure failure});

  $DMChannelFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_CloseFailureCopyWithImpl<$Res>
    extends _$CloseDMStateCopyWithImpl<$Res, _$_CloseFailure>
    implements _$$_CloseFailureCopyWith<$Res> {
  __$$_CloseFailureCopyWithImpl(
      _$_CloseFailure _value, $Res Function(_$_CloseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_CloseFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DMChannelFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_CloseFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CloseFailureCopyWith<_$_CloseFailure> get copyWith =>
      __$$_CloseFailureCopyWithImpl<_$_CloseFailure>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DMChannelFailure failure)? closeFailure,
    TResult? Function()? closeSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CloseFailure value)? closeFailure,
    TResult? Function(_CloseSuccess value)? closeSuccess,
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
  const factory _CloseFailure(final DMChannelFailure failure) = _$_CloseFailure;

  DMChannelFailure get failure;
  @JsonKey(ignore: true)
  _$$_CloseFailureCopyWith<_$_CloseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CloseSuccessCopyWith<$Res> {
  factory _$$_CloseSuccessCopyWith(
          _$_CloseSuccess value, $Res Function(_$_CloseSuccess) then) =
      __$$_CloseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseSuccessCopyWithImpl<$Res>
    extends _$CloseDMStateCopyWithImpl<$Res, _$_CloseSuccess>
    implements _$$_CloseSuccessCopyWith<$Res> {
  __$$_CloseSuccessCopyWithImpl(
      _$_CloseSuccess _value, $Res Function(_$_CloseSuccess) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseSuccess);
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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DMChannelFailure failure)? closeFailure,
    TResult? Function()? closeSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_CloseFailure value)? closeFailure,
    TResult? Function(_CloseSuccess value)? closeSuccess,
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
