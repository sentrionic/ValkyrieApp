// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unban_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnbanUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(MemberFailure failure) unbanFailure,
    required TResult Function(String memberId) unbanSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(MemberFailure failure)? unbanFailure,
    TResult? Function(String memberId)? unbanSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(MemberFailure failure)? unbanFailure,
    TResult Function(String memberId)? unbanSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_UnbanFailure value)? unbanFailure,
    TResult? Function(_UnbanSuccess value)? unbanSuccess,
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
      _$UnbanUserStateCopyWithImpl<$Res, UnbanUserState>;
}

/// @nodoc
class _$UnbanUserStateCopyWithImpl<$Res, $Val extends UnbanUserState>
    implements $UnbanUserStateCopyWith<$Res> {
  _$UnbanUserStateCopyWithImpl(this._value, this._then);

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
    extends _$UnbanUserStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    required TResult Function(MemberFailure failure) unbanFailure,
    required TResult Function(String memberId) unbanSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(MemberFailure failure)? unbanFailure,
    TResult? Function(String memberId)? unbanSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(MemberFailure failure)? unbanFailure,
    TResult Function(String memberId)? unbanSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_UnbanFailure value)? unbanFailure,
    TResult? Function(_UnbanSuccess value)? unbanSuccess,
  }) {
    return initial?.call(this);
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
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$UnbanUserStateCopyWithImpl<$Res, _$_ActionInProgress>
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
    return 'UnbanUserState.actionInProgress()';
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
    required TResult Function(MemberFailure failure) unbanFailure,
    required TResult Function(String memberId) unbanSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(MemberFailure failure)? unbanFailure,
    TResult? Function(String memberId)? unbanSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(MemberFailure failure)? unbanFailure,
    TResult Function(String memberId)? unbanSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_UnbanFailure value)? unbanFailure,
    TResult? Function(_UnbanSuccess value)? unbanSuccess,
  }) {
    return actionInProgress?.call(this);
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
abstract class _$$_UnbanFailureCopyWith<$Res> {
  factory _$$_UnbanFailureCopyWith(
          _$_UnbanFailure value, $Res Function(_$_UnbanFailure) then) =
      __$$_UnbanFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberFailure failure});

  $MemberFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_UnbanFailureCopyWithImpl<$Res>
    extends _$UnbanUserStateCopyWithImpl<$Res, _$_UnbanFailure>
    implements _$$_UnbanFailureCopyWith<$Res> {
  __$$_UnbanFailureCopyWithImpl(
      _$_UnbanFailure _value, $Res Function(_$_UnbanFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_UnbanFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MemberFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberFailureCopyWith<$Res> get failure {
    return $MemberFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UnbanFailure implements _UnbanFailure {
  const _$_UnbanFailure(this.failure);

  @override
  final MemberFailure failure;

  @override
  String toString() {
    return 'UnbanUserState.unbanFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnbanFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnbanFailureCopyWith<_$_UnbanFailure> get copyWith =>
      __$$_UnbanFailureCopyWithImpl<_$_UnbanFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(MemberFailure failure) unbanFailure,
    required TResult Function(String memberId) unbanSuccess,
  }) {
    return unbanFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(MemberFailure failure)? unbanFailure,
    TResult? Function(String memberId)? unbanSuccess,
  }) {
    return unbanFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(MemberFailure failure)? unbanFailure,
    TResult Function(String memberId)? unbanSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_UnbanFailure value)? unbanFailure,
    TResult? Function(_UnbanSuccess value)? unbanSuccess,
  }) {
    return unbanFailure?.call(this);
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
  const factory _UnbanFailure(final MemberFailure failure) = _$_UnbanFailure;

  MemberFailure get failure;
  @JsonKey(ignore: true)
  _$$_UnbanFailureCopyWith<_$_UnbanFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnbanSuccessCopyWith<$Res> {
  factory _$$_UnbanSuccessCopyWith(
          _$_UnbanSuccess value, $Res Function(_$_UnbanSuccess) then) =
      __$$_UnbanSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String memberId});
}

/// @nodoc
class __$$_UnbanSuccessCopyWithImpl<$Res>
    extends _$UnbanUserStateCopyWithImpl<$Res, _$_UnbanSuccess>
    implements _$$_UnbanSuccessCopyWith<$Res> {
  __$$_UnbanSuccessCopyWithImpl(
      _$_UnbanSuccess _value, $Res Function(_$_UnbanSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$_UnbanSuccess(
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnbanSuccess implements _UnbanSuccess {
  const _$_UnbanSuccess(this.memberId);

  @override
  final String memberId;

  @override
  String toString() {
    return 'UnbanUserState.unbanSuccess(memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnbanSuccess &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnbanSuccessCopyWith<_$_UnbanSuccess> get copyWith =>
      __$$_UnbanSuccessCopyWithImpl<_$_UnbanSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(MemberFailure failure) unbanFailure,
    required TResult Function(String memberId) unbanSuccess,
  }) {
    return unbanSuccess(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(MemberFailure failure)? unbanFailure,
    TResult? Function(String memberId)? unbanSuccess,
  }) {
    return unbanSuccess?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(MemberFailure failure)? unbanFailure,
    TResult Function(String memberId)? unbanSuccess,
    required TResult orElse(),
  }) {
    if (unbanSuccess != null) {
      return unbanSuccess(memberId);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_UnbanFailure value)? unbanFailure,
    TResult? Function(_UnbanSuccess value)? unbanSuccess,
  }) {
    return unbanSuccess?.call(this);
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
  const factory _UnbanSuccess(final String memberId) = _$_UnbanSuccess;

  String get memberId;
  @JsonKey(ignore: true)
  _$$_UnbanSuccessCopyWith<_$_UnbanSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
