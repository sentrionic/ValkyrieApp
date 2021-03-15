// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dm_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DMListEventTearOff {
  const _$DMListEventTearOff();

  _GetUserDMs getUserDMs() {
    return const _GetUserDMs();
  }

  _DMChannelsReceived dmChannelsReceived(
      Either<DMChannelFailure, List<DMChannel>> failureOrChannels) {
    return _DMChannelsReceived(
      failureOrChannels,
    );
  }
}

/// @nodoc
const $DMListEvent = _$DMListEventTearOff();

/// @nodoc
mixin _$DMListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserDMs,
    required TResult Function(
            Either<DMChannelFailure, List<DMChannel>> failureOrChannels)
        dmChannelsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserDMs,
    TResult Function(
            Either<DMChannelFailure, List<DMChannel>> failureOrChannels)?
        dmChannelsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDMs value) getUserDMs,
    required TResult Function(_DMChannelsReceived value) dmChannelsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDMs value)? getUserDMs,
    TResult Function(_DMChannelsReceived value)? dmChannelsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMListEventCopyWith<$Res> {
  factory $DMListEventCopyWith(
          DMListEvent value, $Res Function(DMListEvent) then) =
      _$DMListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DMListEventCopyWithImpl<$Res> implements $DMListEventCopyWith<$Res> {
  _$DMListEventCopyWithImpl(this._value, this._then);

  final DMListEvent _value;
  // ignore: unused_field
  final $Res Function(DMListEvent) _then;
}

/// @nodoc
abstract class _$GetUserDMsCopyWith<$Res> {
  factory _$GetUserDMsCopyWith(
          _GetUserDMs value, $Res Function(_GetUserDMs) then) =
      __$GetUserDMsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUserDMsCopyWithImpl<$Res> extends _$DMListEventCopyWithImpl<$Res>
    implements _$GetUserDMsCopyWith<$Res> {
  __$GetUserDMsCopyWithImpl(
      _GetUserDMs _value, $Res Function(_GetUserDMs) _then)
      : super(_value, (v) => _then(v as _GetUserDMs));

  @override
  _GetUserDMs get _value => super._value as _GetUserDMs;
}

/// @nodoc
class _$_GetUserDMs implements _GetUserDMs {
  const _$_GetUserDMs();

  @override
  String toString() {
    return 'DMListEvent.getUserDMs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetUserDMs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserDMs,
    required TResult Function(
            Either<DMChannelFailure, List<DMChannel>> failureOrChannels)
        dmChannelsReceived,
  }) {
    return getUserDMs();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserDMs,
    TResult Function(
            Either<DMChannelFailure, List<DMChannel>> failureOrChannels)?
        dmChannelsReceived,
    required TResult orElse(),
  }) {
    if (getUserDMs != null) {
      return getUserDMs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDMs value) getUserDMs,
    required TResult Function(_DMChannelsReceived value) dmChannelsReceived,
  }) {
    return getUserDMs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDMs value)? getUserDMs,
    TResult Function(_DMChannelsReceived value)? dmChannelsReceived,
    required TResult orElse(),
  }) {
    if (getUserDMs != null) {
      return getUserDMs(this);
    }
    return orElse();
  }
}

abstract class _GetUserDMs implements DMListEvent {
  const factory _GetUserDMs() = _$_GetUserDMs;
}

/// @nodoc
abstract class _$DMChannelsReceivedCopyWith<$Res> {
  factory _$DMChannelsReceivedCopyWith(
          _DMChannelsReceived value, $Res Function(_DMChannelsReceived) then) =
      __$DMChannelsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DMChannelFailure, List<DMChannel>> failureOrChannels});
}

/// @nodoc
class __$DMChannelsReceivedCopyWithImpl<$Res>
    extends _$DMListEventCopyWithImpl<$Res>
    implements _$DMChannelsReceivedCopyWith<$Res> {
  __$DMChannelsReceivedCopyWithImpl(
      _DMChannelsReceived _value, $Res Function(_DMChannelsReceived) _then)
      : super(_value, (v) => _then(v as _DMChannelsReceived));

  @override
  _DMChannelsReceived get _value => super._value as _DMChannelsReceived;

  @override
  $Res call({
    Object? failureOrChannels = freezed,
  }) {
    return _then(_DMChannelsReceived(
      failureOrChannels == freezed
          ? _value.failureOrChannels
          : failureOrChannels as Either<DMChannelFailure, List<DMChannel>>,
    ));
  }
}

/// @nodoc
class _$_DMChannelsReceived implements _DMChannelsReceived {
  const _$_DMChannelsReceived(this.failureOrChannels);

  @override
  final Either<DMChannelFailure, List<DMChannel>> failureOrChannels;

  @override
  String toString() {
    return 'DMListEvent.dmChannelsReceived(failureOrChannels: $failureOrChannels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DMChannelsReceived &&
            (identical(other.failureOrChannels, failureOrChannels) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrChannels, failureOrChannels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrChannels);

  @JsonKey(ignore: true)
  @override
  _$DMChannelsReceivedCopyWith<_DMChannelsReceived> get copyWith =>
      __$DMChannelsReceivedCopyWithImpl<_DMChannelsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserDMs,
    required TResult Function(
            Either<DMChannelFailure, List<DMChannel>> failureOrChannels)
        dmChannelsReceived,
  }) {
    return dmChannelsReceived(failureOrChannels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserDMs,
    TResult Function(
            Either<DMChannelFailure, List<DMChannel>> failureOrChannels)?
        dmChannelsReceived,
    required TResult orElse(),
  }) {
    if (dmChannelsReceived != null) {
      return dmChannelsReceived(failureOrChannels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDMs value) getUserDMs,
    required TResult Function(_DMChannelsReceived value) dmChannelsReceived,
  }) {
    return dmChannelsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDMs value)? getUserDMs,
    TResult Function(_DMChannelsReceived value)? dmChannelsReceived,
    required TResult orElse(),
  }) {
    if (dmChannelsReceived != null) {
      return dmChannelsReceived(this);
    }
    return orElse();
  }
}

abstract class _DMChannelsReceived implements DMListEvent {
  const factory _DMChannelsReceived(
          Either<DMChannelFailure, List<DMChannel>> failureOrChannels) =
      _$_DMChannelsReceived;

  Either<DMChannelFailure, List<DMChannel>> get failureOrChannels =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DMChannelsReceivedCopyWith<_DMChannelsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DMListStateTearOff {
  const _$DMListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<DMChannel> channels) {
    return _LoadSuccess(
      channels,
    );
  }

  _LoadFailure loadFailure(DMChannelFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $DMListState = _$DMListStateTearOff();

/// @nodoc
mixin _$DMListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DMChannel> channels) loadSuccess,
    required TResult Function(DMChannelFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DMChannel> channels)? loadSuccess,
    TResult Function(DMChannelFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMListStateCopyWith<$Res> {
  factory $DMListStateCopyWith(
          DMListState value, $Res Function(DMListState) then) =
      _$DMListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DMListStateCopyWithImpl<$Res> implements $DMListStateCopyWith<$Res> {
  _$DMListStateCopyWithImpl(this._value, this._then);

  final DMListState _value;
  // ignore: unused_field
  final $Res Function(DMListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DMListStateCopyWithImpl<$Res>
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
    return 'DMListState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<DMChannel> channels) loadSuccess,
    required TResult Function(DMChannelFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DMChannel> channels)? loadSuccess,
    TResult Function(DMChannelFailure failure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DMListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$DMListStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'DMListState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DMChannel> channels) loadSuccess,
    required TResult Function(DMChannelFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DMChannel> channels)? loadSuccess,
    TResult Function(DMChannelFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements DMListState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<DMChannel> channels});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$DMListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? channels = freezed,
  }) {
    return _then(_LoadSuccess(
      channels == freezed ? _value.channels : channels as List<DMChannel>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.channels);

  @override
  final List<DMChannel> channels;

  @override
  String toString() {
    return 'DMListState.loadSuccess(channels: $channels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.channels, channels) ||
                const DeepCollectionEquality()
                    .equals(other.channels, channels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(channels);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DMChannel> channels) loadSuccess,
    required TResult Function(DMChannelFailure failure) loadFailure,
  }) {
    return loadSuccess(channels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DMChannel> channels)? loadSuccess,
    TResult Function(DMChannelFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(channels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements DMListState {
  const factory _LoadSuccess(List<DMChannel> channels) = _$_LoadSuccess;

  List<DMChannel> get channels => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({DMChannelFailure failure});

  $DMChannelFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$DMListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed ? _value.failure : failure as DMChannelFailure,
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
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final DMChannelFailure failure;

  @override
  String toString() {
    return 'DMListState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DMChannel> channels) loadSuccess,
    required TResult Function(DMChannelFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DMChannel> channels)? loadSuccess,
    TResult Function(DMChannelFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements DMListState {
  const factory _LoadFailure(DMChannelFailure failure) = _$_LoadFailure;

  DMChannelFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
