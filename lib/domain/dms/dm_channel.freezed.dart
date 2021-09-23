// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dm_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DMChannelTearOff {
  const _$DMChannelTearOff();

  _DMChannel call({required String id, required DMUser user}) {
    return _DMChannel(
      id: id,
      user: user,
    );
  }
}

/// @nodoc
const $DMChannel = _$DMChannelTearOff();

/// @nodoc
mixin _$DMChannel {
  String get id => throw _privateConstructorUsedError;
  DMUser get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DMChannelCopyWith<DMChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMChannelCopyWith<$Res> {
  factory $DMChannelCopyWith(DMChannel value, $Res Function(DMChannel) then) =
      _$DMChannelCopyWithImpl<$Res>;
  $Res call({String id, DMUser user});

  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class _$DMChannelCopyWithImpl<$Res> implements $DMChannelCopyWith<$Res> {
  _$DMChannelCopyWithImpl(this._value, this._then);

  final DMChannel _value;
  // ignore: unused_field
  final $Res Function(DMChannel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUser,
    ));
  }

  @override
  $DMUserCopyWith<$Res> get user {
    return $DMUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$DMChannelCopyWith<$Res> implements $DMChannelCopyWith<$Res> {
  factory _$DMChannelCopyWith(
          _DMChannel value, $Res Function(_DMChannel) then) =
      __$DMChannelCopyWithImpl<$Res>;
  @override
  $Res call({String id, DMUser user});

  @override
  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class __$DMChannelCopyWithImpl<$Res> extends _$DMChannelCopyWithImpl<$Res>
    implements _$DMChannelCopyWith<$Res> {
  __$DMChannelCopyWithImpl(_DMChannel _value, $Res Function(_DMChannel) _then)
      : super(_value, (v) => _then(v as _DMChannel));

  @override
  _DMChannel get _value => super._value as _DMChannel;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_DMChannel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUser,
    ));
  }
}

/// @nodoc

class _$_DMChannel extends _DMChannel {
  const _$_DMChannel({required this.id, required this.user}) : super._();

  @override
  final String id;
  @override
  final DMUser user;

  @override
  String toString() {
    return 'DMChannel(id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DMChannel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$DMChannelCopyWith<_DMChannel> get copyWith =>
      __$DMChannelCopyWithImpl<_DMChannel>(this, _$identity);
}

abstract class _DMChannel extends DMChannel {
  const factory _DMChannel({required String id, required DMUser user}) =
      _$_DMChannel;
  const _DMChannel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DMUser get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DMChannelCopyWith<_DMChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DMNotificationTearOff {
  const _$DMNotificationTearOff();

  _DMNotification call(
      {required String id, required int count, required DMUser user}) {
    return _DMNotification(
      id: id,
      count: count,
      user: user,
    );
  }
}

/// @nodoc
const $DMNotification = _$DMNotificationTearOff();

/// @nodoc
mixin _$DMNotification {
  String get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  DMUser get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DMNotificationCopyWith<DMNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMNotificationCopyWith<$Res> {
  factory $DMNotificationCopyWith(
          DMNotification value, $Res Function(DMNotification) then) =
      _$DMNotificationCopyWithImpl<$Res>;
  $Res call({String id, int count, DMUser user});

  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class _$DMNotificationCopyWithImpl<$Res>
    implements $DMNotificationCopyWith<$Res> {
  _$DMNotificationCopyWithImpl(this._value, this._then);

  final DMNotification _value;
  // ignore: unused_field
  final $Res Function(DMNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUser,
    ));
  }

  @override
  $DMUserCopyWith<$Res> get user {
    return $DMUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$DMNotificationCopyWith<$Res>
    implements $DMNotificationCopyWith<$Res> {
  factory _$DMNotificationCopyWith(
          _DMNotification value, $Res Function(_DMNotification) then) =
      __$DMNotificationCopyWithImpl<$Res>;
  @override
  $Res call({String id, int count, DMUser user});

  @override
  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class __$DMNotificationCopyWithImpl<$Res>
    extends _$DMNotificationCopyWithImpl<$Res>
    implements _$DMNotificationCopyWith<$Res> {
  __$DMNotificationCopyWithImpl(
      _DMNotification _value, $Res Function(_DMNotification) _then)
      : super(_value, (v) => _then(v as _DMNotification));

  @override
  _DMNotification get _value => super._value as _DMNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
    Object? user = freezed,
  }) {
    return _then(_DMNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUser,
    ));
  }
}

/// @nodoc

class _$_DMNotification extends _DMNotification {
  const _$_DMNotification(
      {required this.id, required this.count, required this.user})
      : super._();

  @override
  final String id;
  @override
  final int count;
  @override
  final DMUser user;

  @override
  String toString() {
    return 'DMNotification(id: $id, count: $count, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DMNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$DMNotificationCopyWith<_DMNotification> get copyWith =>
      __$DMNotificationCopyWithImpl<_DMNotification>(this, _$identity);
}

abstract class _DMNotification extends DMNotification {
  const factory _DMNotification(
      {required String id,
      required int count,
      required DMUser user}) = _$_DMNotification;
  const _DMNotification._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  DMUser get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DMNotificationCopyWith<_DMNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
