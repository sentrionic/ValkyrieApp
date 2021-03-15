// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'guild_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GuildListEventTearOff {
  const _$GuildListEventTearOff();

  _GetGuilds getGuilds() {
    return const _GetGuilds();
  }

  _GuildsReceived guildsReceived(
      Either<GuildFailure, List<Guild>> failureOrGuilds) {
    return _GuildsReceived(
      failureOrGuilds,
    );
  }
}

/// @nodoc
const $GuildListEvent = _$GuildListEventTearOff();

/// @nodoc
mixin _$GuildListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGuilds,
    required TResult Function(Either<GuildFailure, List<Guild>> failureOrGuilds)
        guildsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGuilds,
    TResult Function(Either<GuildFailure, List<Guild>> failureOrGuilds)?
        guildsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGuilds value) getGuilds,
    required TResult Function(_GuildsReceived value) guildsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGuilds value)? getGuilds,
    TResult Function(_GuildsReceived value)? guildsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildListEventCopyWith<$Res> {
  factory $GuildListEventCopyWith(
          GuildListEvent value, $Res Function(GuildListEvent) then) =
      _$GuildListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuildListEventCopyWithImpl<$Res>
    implements $GuildListEventCopyWith<$Res> {
  _$GuildListEventCopyWithImpl(this._value, this._then);

  final GuildListEvent _value;
  // ignore: unused_field
  final $Res Function(GuildListEvent) _then;
}

/// @nodoc
abstract class _$GetGuildsCopyWith<$Res> {
  factory _$GetGuildsCopyWith(
          _GetGuilds value, $Res Function(_GetGuilds) then) =
      __$GetGuildsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGuildsCopyWithImpl<$Res> extends _$GuildListEventCopyWithImpl<$Res>
    implements _$GetGuildsCopyWith<$Res> {
  __$GetGuildsCopyWithImpl(_GetGuilds _value, $Res Function(_GetGuilds) _then)
      : super(_value, (v) => _then(v as _GetGuilds));

  @override
  _GetGuilds get _value => super._value as _GetGuilds;
}

/// @nodoc
class _$_GetGuilds implements _GetGuilds {
  const _$_GetGuilds();

  @override
  String toString() {
    return 'GuildListEvent.getGuilds()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetGuilds);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGuilds,
    required TResult Function(Either<GuildFailure, List<Guild>> failureOrGuilds)
        guildsReceived,
  }) {
    return getGuilds();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGuilds,
    TResult Function(Either<GuildFailure, List<Guild>> failureOrGuilds)?
        guildsReceived,
    required TResult orElse(),
  }) {
    if (getGuilds != null) {
      return getGuilds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGuilds value) getGuilds,
    required TResult Function(_GuildsReceived value) guildsReceived,
  }) {
    return getGuilds(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGuilds value)? getGuilds,
    TResult Function(_GuildsReceived value)? guildsReceived,
    required TResult orElse(),
  }) {
    if (getGuilds != null) {
      return getGuilds(this);
    }
    return orElse();
  }
}

abstract class _GetGuilds implements GuildListEvent {
  const factory _GetGuilds() = _$_GetGuilds;
}

/// @nodoc
abstract class _$GuildsReceivedCopyWith<$Res> {
  factory _$GuildsReceivedCopyWith(
          _GuildsReceived value, $Res Function(_GuildsReceived) then) =
      __$GuildsReceivedCopyWithImpl<$Res>;
  $Res call({Either<GuildFailure, List<Guild>> failureOrGuilds});
}

/// @nodoc
class __$GuildsReceivedCopyWithImpl<$Res>
    extends _$GuildListEventCopyWithImpl<$Res>
    implements _$GuildsReceivedCopyWith<$Res> {
  __$GuildsReceivedCopyWithImpl(
      _GuildsReceived _value, $Res Function(_GuildsReceived) _then)
      : super(_value, (v) => _then(v as _GuildsReceived));

  @override
  _GuildsReceived get _value => super._value as _GuildsReceived;

  @override
  $Res call({
    Object? failureOrGuilds = freezed,
  }) {
    return _then(_GuildsReceived(
      failureOrGuilds == freezed
          ? _value.failureOrGuilds
          : failureOrGuilds as Either<GuildFailure, List<Guild>>,
    ));
  }
}

/// @nodoc
class _$_GuildsReceived implements _GuildsReceived {
  const _$_GuildsReceived(this.failureOrGuilds);

  @override
  final Either<GuildFailure, List<Guild>> failureOrGuilds;

  @override
  String toString() {
    return 'GuildListEvent.guildsReceived(failureOrGuilds: $failureOrGuilds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuildsReceived &&
            (identical(other.failureOrGuilds, failureOrGuilds) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrGuilds, failureOrGuilds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrGuilds);

  @JsonKey(ignore: true)
  @override
  _$GuildsReceivedCopyWith<_GuildsReceived> get copyWith =>
      __$GuildsReceivedCopyWithImpl<_GuildsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGuilds,
    required TResult Function(Either<GuildFailure, List<Guild>> failureOrGuilds)
        guildsReceived,
  }) {
    return guildsReceived(failureOrGuilds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGuilds,
    TResult Function(Either<GuildFailure, List<Guild>> failureOrGuilds)?
        guildsReceived,
    required TResult orElse(),
  }) {
    if (guildsReceived != null) {
      return guildsReceived(failureOrGuilds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGuilds value) getGuilds,
    required TResult Function(_GuildsReceived value) guildsReceived,
  }) {
    return guildsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGuilds value)? getGuilds,
    TResult Function(_GuildsReceived value)? guildsReceived,
    required TResult orElse(),
  }) {
    if (guildsReceived != null) {
      return guildsReceived(this);
    }
    return orElse();
  }
}

abstract class _GuildsReceived implements GuildListEvent {
  const factory _GuildsReceived(
      Either<GuildFailure, List<Guild>> failureOrGuilds) = _$_GuildsReceived;

  Either<GuildFailure, List<Guild>> get failureOrGuilds =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GuildsReceivedCopyWith<_GuildsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GuildListStateTearOff {
  const _$GuildListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Guild> guilds) {
    return _LoadSuccess(
      guilds,
    );
  }

  _LoadFailure loadFailure(GuildFailure guildFailure) {
    return _LoadFailure(
      guildFailure,
    );
  }
}

/// @nodoc
const $GuildListState = _$GuildListStateTearOff();

/// @nodoc
mixin _$GuildListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Guild> guilds) loadSuccess,
    required TResult Function(GuildFailure guildFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Guild> guilds)? loadSuccess,
    TResult Function(GuildFailure guildFailure)? loadFailure,
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
abstract class $GuildListStateCopyWith<$Res> {
  factory $GuildListStateCopyWith(
          GuildListState value, $Res Function(GuildListState) then) =
      _$GuildListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuildListStateCopyWithImpl<$Res>
    implements $GuildListStateCopyWith<$Res> {
  _$GuildListStateCopyWithImpl(this._value, this._then);

  final GuildListState _value;
  // ignore: unused_field
  final $Res Function(GuildListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GuildListStateCopyWithImpl<$Res>
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
    return 'GuildListState.initial()';
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
    required TResult Function(List<Guild> guilds) loadSuccess,
    required TResult Function(GuildFailure guildFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Guild> guilds)? loadSuccess,
    TResult Function(GuildFailure guildFailure)? loadFailure,
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

abstract class _Initial implements GuildListState {
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
    extends _$GuildListStateCopyWithImpl<$Res>
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
    return 'GuildListState.loadInProgress()';
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
    required TResult Function(List<Guild> guilds) loadSuccess,
    required TResult Function(GuildFailure guildFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Guild> guilds)? loadSuccess,
    TResult Function(GuildFailure guildFailure)? loadFailure,
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

abstract class _LoadInProgress implements GuildListState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Guild> guilds});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$GuildListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? guilds = freezed,
  }) {
    return _then(_LoadSuccess(
      guilds == freezed ? _value.guilds : guilds as List<Guild>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.guilds);

  @override
  final List<Guild> guilds;

  @override
  String toString() {
    return 'GuildListState.loadSuccess(guilds: $guilds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.guilds, guilds) ||
                const DeepCollectionEquality().equals(other.guilds, guilds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(guilds);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Guild> guilds) loadSuccess,
    required TResult Function(GuildFailure guildFailure) loadFailure,
  }) {
    return loadSuccess(guilds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Guild> guilds)? loadSuccess,
    TResult Function(GuildFailure guildFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(guilds);
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

abstract class _LoadSuccess implements GuildListState {
  const factory _LoadSuccess(List<Guild> guilds) = _$_LoadSuccess;

  List<Guild> get guilds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({GuildFailure guildFailure});

  $GuildFailureCopyWith<$Res> get guildFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$GuildListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? guildFailure = freezed,
  }) {
    return _then(_LoadFailure(
      guildFailure == freezed
          ? _value.guildFailure
          : guildFailure as GuildFailure,
    ));
  }

  @override
  $GuildFailureCopyWith<$Res> get guildFailure {
    return $GuildFailureCopyWith<$Res>(_value.guildFailure, (value) {
      return _then(_value.copyWith(guildFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.guildFailure);

  @override
  final GuildFailure guildFailure;

  @override
  String toString() {
    return 'GuildListState.loadFailure(guildFailure: $guildFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.guildFailure, guildFailure) ||
                const DeepCollectionEquality()
                    .equals(other.guildFailure, guildFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(guildFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Guild> guilds) loadSuccess,
    required TResult Function(GuildFailure guildFailure) loadFailure,
  }) {
    return loadFailure(guildFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Guild> guilds)? loadSuccess,
    TResult Function(GuildFailure guildFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(guildFailure);
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

abstract class _LoadFailure implements GuildListState {
  const factory _LoadFailure(GuildFailure guildFailure) = _$_LoadFailure;

  GuildFailure get guildFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
