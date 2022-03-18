// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_private_channel_members_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetPrivateChannelMembersStateTearOff {
  const _$GetPrivateChannelMembersStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

  _FetchSuccess fetchSuccess(List<String> memberIds) {
    return _FetchSuccess(
      memberIds,
    );
  }

  _FetchFailure fetchFailure(ChannelFailure failure) {
    return _FetchFailure(
      failure,
    );
  }
}

/// @nodoc
const $GetPrivateChannelMembersState = _$GetPrivateChannelMembersStateTearOff();

/// @nodoc
mixin _$GetPrivateChannelMembersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<String> memberIds) fetchSuccess,
    required TResult Function(ChannelFailure failure) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPrivateChannelMembersStateCopyWith<$Res> {
  factory $GetPrivateChannelMembersStateCopyWith(
          GetPrivateChannelMembersState value,
          $Res Function(GetPrivateChannelMembersState) then) =
      _$GetPrivateChannelMembersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPrivateChannelMembersStateCopyWithImpl<$Res>
    implements $GetPrivateChannelMembersStateCopyWith<$Res> {
  _$GetPrivateChannelMembersStateCopyWithImpl(this._value, this._then);

  final GetPrivateChannelMembersState _value;
  // ignore: unused_field
  final $Res Function(GetPrivateChannelMembersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$GetPrivateChannelMembersStateCopyWithImpl<$Res>
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
    return 'GetPrivateChannelMembersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<String> memberIds) fetchSuccess,
    required TResult Function(ChannelFailure failure) fetchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
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
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetPrivateChannelMembersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FetchInProgressCopyWith<$Res> {
  factory _$FetchInProgressCopyWith(
          _FetchInProgress value, $Res Function(_FetchInProgress) then) =
      __$FetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchInProgressCopyWithImpl<$Res>
    extends _$GetPrivateChannelMembersStateCopyWithImpl<$Res>
    implements _$FetchInProgressCopyWith<$Res> {
  __$FetchInProgressCopyWithImpl(
      _FetchInProgress _value, $Res Function(_FetchInProgress) _then)
      : super(_value, (v) => _then(v as _FetchInProgress));

  @override
  _FetchInProgress get _value => super._value as _FetchInProgress;
}

/// @nodoc

class _$_FetchInProgress implements _FetchInProgress {
  const _$_FetchInProgress();

  @override
  String toString() {
    return 'GetPrivateChannelMembersState.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<String> memberIds) fetchSuccess,
    required TResult Function(ChannelFailure failure) fetchFailure,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
  }) {
    return fetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return fetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchInProgress implements GetPrivateChannelMembersState {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

/// @nodoc
abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
  $Res call({List<String> memberIds});
}

/// @nodoc
class __$FetchSuccessCopyWithImpl<$Res>
    extends _$GetPrivateChannelMembersStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;

  @override
  $Res call({
    Object? memberIds = freezed,
  }) {
    return _then(_FetchSuccess(
      memberIds == freezed
          ? _value.memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess(this.memberIds);

  @override
  final List<String> memberIds;

  @override
  String toString() {
    return 'GetPrivateChannelMembersState.fetchSuccess(memberIds: $memberIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchSuccess &&
            const DeepCollectionEquality().equals(other.memberIds, memberIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(memberIds));

  @JsonKey(ignore: true)
  @override
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      __$FetchSuccessCopyWithImpl<_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<String> memberIds) fetchSuccess,
    required TResult Function(ChannelFailure failure) fetchFailure,
  }) {
    return fetchSuccess(memberIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
  }) {
    return fetchSuccess?.call(memberIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(memberIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements GetPrivateChannelMembersState {
  const factory _FetchSuccess(List<String> memberIds) = _$_FetchSuccess;

  List<String> get memberIds;
  @JsonKey(ignore: true)
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchFailureCopyWith<$Res> {
  factory _$FetchFailureCopyWith(
          _FetchFailure value, $Res Function(_FetchFailure) then) =
      __$FetchFailureCopyWithImpl<$Res>;
  $Res call({ChannelFailure failure});

  $ChannelFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FetchFailureCopyWithImpl<$Res>
    extends _$GetPrivateChannelMembersStateCopyWithImpl<$Res>
    implements _$FetchFailureCopyWith<$Res> {
  __$FetchFailureCopyWithImpl(
      _FetchFailure _value, $Res Function(_FetchFailure) _then)
      : super(_value, (v) => _then(v as _FetchFailure));

  @override
  _FetchFailure get _value => super._value as _FetchFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_FetchFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ChannelFailure,
    ));
  }

  @override
  $ChannelFailureCopyWith<$Res> get failure {
    return $ChannelFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FetchFailure implements _FetchFailure {
  const _$_FetchFailure(this.failure);

  @override
  final ChannelFailure failure;

  @override
  String toString() {
    return 'GetPrivateChannelMembersState.fetchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      __$FetchFailureCopyWithImpl<_FetchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<String> memberIds) fetchSuccess,
    required TResult Function(ChannelFailure failure) fetchFailure,
  }) {
    return fetchFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
  }) {
    return fetchFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<String> memberIds)? fetchSuccess,
    TResult Function(ChannelFailure failure)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return fetchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchFailure implements GetPrivateChannelMembersState {
  const factory _FetchFailure(ChannelFailure failure) = _$_FetchFailure;

  ChannelFailure get failure;
  @JsonKey(ignore: true)
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
