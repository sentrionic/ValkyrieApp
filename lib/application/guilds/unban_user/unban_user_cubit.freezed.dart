// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'unban_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnbanUserStateTearOff {
  const _$UnbanUserStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _UnbanFailure unbanFailure(GuildFailure failure) {
    return _UnbanFailure(
      failure,
    );
  }

  _UnbanSuccess unbanSuccess() {
    return const _UnbanSuccess();
  }
}

/// @nodoc
const $UnbanUserState = _$UnbanUserStateTearOff();

/// @nodoc
mixin _$UnbanUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(GuildFailure failure) unbanFailure,
    required TResult Function() unbanSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? unbanFailure,
    TResult Function()? unbanSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_UnbanFailure value) unbanFailure,
    required TResult Function(_UnbanSuccess value) unbanSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_UnbanFailure value)? unbanFailure,
    TResult Function(_UnbanSuccess value)? unbanSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnbanUserStateCopyWith<$Res> {
  factory $UnbanUserStateCopyWith(
          UnbanUserState value, $Res Function(UnbanUserState) then) =
      _$UnbanUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnbanUserStateCopyWithImpl<$Res>
    implements $UnbanUserStateCopyWith<$Res> {
  _$UnbanUserStateCopyWithImpl(this._value, this._then);

  final UnbanUserState _value;
  // ignore: unused_field
  final $Res Function(UnbanUserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UnbanUserStateCopyWithImpl<$Res>
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
    return 'UnbanUserState.initial()';
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
    required TResult Function(GuildFailure failure) unbanFailure,
    required TResult Function() unbanSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? unbanFailure,
    TResult Function()? unbanSuccess,
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
    required TResult Function(_UnbanFailure value) unbanFailure,
    required TResult Function(_UnbanSuccess value) unbanSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_UnbanFailure value)? unbanFailure,
    TResult Function(_UnbanSuccess value)? unbanSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UnbanUserState {
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
    extends _$UnbanUserStateCopyWithImpl<$Res>
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
    return 'UnbanUserState.actionInProgress()';
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
    required TResult Function(GuildFailure failure) unbanFailure,
    required TResult Function() unbanSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? unbanFailure,
    TResult Function()? unbanSuccess,
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
    required TResult Function(_UnbanFailure value) unbanFailure,
    required TResult Function(_UnbanSuccess value) unbanSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_UnbanFailure value)? unbanFailure,
    TResult Function(_UnbanSuccess value)? unbanSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements UnbanUserState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$UnbanFailureCopyWith<$Res> {
  factory _$UnbanFailureCopyWith(
          _UnbanFailure value, $Res Function(_UnbanFailure) then) =
      __$UnbanFailureCopyWithImpl<$Res>;
  $Res call({GuildFailure failure});

  $GuildFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UnbanFailureCopyWithImpl<$Res>
    extends _$UnbanUserStateCopyWithImpl<$Res>
    implements _$UnbanFailureCopyWith<$Res> {
  __$UnbanFailureCopyWithImpl(
      _UnbanFailure _value, $Res Function(_UnbanFailure) _then)
      : super(_value, (v) => _then(v as _UnbanFailure));

  @override
  _UnbanFailure get _value => super._value as _UnbanFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UnbanFailure(
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
class _$_UnbanFailure implements _UnbanFailure {
  const _$_UnbanFailure(this.failure);

  @override
  final GuildFailure failure;

  @override
  String toString() {
    return 'UnbanUserState.unbanFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnbanFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$UnbanFailureCopyWith<_UnbanFailure> get copyWith =>
      __$UnbanFailureCopyWithImpl<_UnbanFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(GuildFailure failure) unbanFailure,
    required TResult Function() unbanSuccess,
  }) {
    return unbanFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? unbanFailure,
    TResult Function()? unbanSuccess,
    required TResult orElse(),
  }) {
    if (unbanFailure != null) {
      return unbanFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_UnbanFailure value) unbanFailure,
    required TResult Function(_UnbanSuccess value) unbanSuccess,
  }) {
    return unbanFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_UnbanFailure value)? unbanFailure,
    TResult Function(_UnbanSuccess value)? unbanSuccess,
    required TResult orElse(),
  }) {
    if (unbanFailure != null) {
      return unbanFailure(this);
    }
    return orElse();
  }
}

abstract class _UnbanFailure implements UnbanUserState {
  const factory _UnbanFailure(GuildFailure failure) = _$_UnbanFailure;

  GuildFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnbanFailureCopyWith<_UnbanFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnbanSuccessCopyWith<$Res> {
  factory _$UnbanSuccessCopyWith(
          _UnbanSuccess value, $Res Function(_UnbanSuccess) then) =
      __$UnbanSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnbanSuccessCopyWithImpl<$Res>
    extends _$UnbanUserStateCopyWithImpl<$Res>
    implements _$UnbanSuccessCopyWith<$Res> {
  __$UnbanSuccessCopyWithImpl(
      _UnbanSuccess _value, $Res Function(_UnbanSuccess) _then)
      : super(_value, (v) => _then(v as _UnbanSuccess));

  @override
  _UnbanSuccess get _value => super._value as _UnbanSuccess;
}

/// @nodoc
class _$_UnbanSuccess implements _UnbanSuccess {
  const _$_UnbanSuccess();

  @override
  String toString() {
    return 'UnbanUserState.unbanSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnbanSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(GuildFailure failure) unbanFailure,
    required TResult Function() unbanSuccess,
  }) {
    return unbanSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(GuildFailure failure)? unbanFailure,
    TResult Function()? unbanSuccess,
    required TResult orElse(),
  }) {
    if (unbanSuccess != null) {
      return unbanSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_UnbanFailure value) unbanFailure,
    required TResult Function(_UnbanSuccess value) unbanSuccess,
  }) {
    return unbanSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_UnbanFailure value)? unbanFailure,
    TResult Function(_UnbanSuccess value)? unbanSuccess,
    required TResult orElse(),
  }) {
    if (unbanSuccess != null) {
      return unbanSuccess(this);
    }
    return orElse();
  }
}

abstract class _UnbanSuccess implements UnbanUserState {
  const factory _UnbanSuccess() = _$_UnbanSuccess;
}
