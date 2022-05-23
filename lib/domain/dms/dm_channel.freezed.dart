// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dm_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_DMChannelCopyWith<$Res> implements $DMChannelCopyWith<$Res> {
  factory _$$_DMChannelCopyWith(
          _$_DMChannel value, $Res Function(_$_DMChannel) then) =
      __$$_DMChannelCopyWithImpl<$Res>;
  @override
  $Res call({String id, DMUser user});

  @override
  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMChannelCopyWithImpl<$Res> extends _$DMChannelCopyWithImpl<$Res>
    implements _$$_DMChannelCopyWith<$Res> {
  __$$_DMChannelCopyWithImpl(
      _$_DMChannel _value, $Res Function(_$_DMChannel) _then)
      : super(_value, (v) => _then(v as _$_DMChannel));

  @override
  _$_DMChannel get _value => super._value as _$_DMChannel;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_DMChannel(
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
        (other.runtimeType == runtimeType &&
            other is _$_DMChannel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_DMChannelCopyWith<_$_DMChannel> get copyWith =>
      __$$_DMChannelCopyWithImpl<_$_DMChannel>(this, _$identity);
}

abstract class _DMChannel extends DMChannel {
  const factory _DMChannel(
      {required final String id, required final DMUser user}) = _$_DMChannel;
  const _DMChannel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DMUser get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DMChannelCopyWith<_$_DMChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_DMNotificationCopyWith<$Res>
    implements $DMNotificationCopyWith<$Res> {
  factory _$$_DMNotificationCopyWith(
          _$_DMNotification value, $Res Function(_$_DMNotification) then) =
      __$$_DMNotificationCopyWithImpl<$Res>;
  @override
  $Res call({String id, int count, DMUser user});

  @override
  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMNotificationCopyWithImpl<$Res>
    extends _$DMNotificationCopyWithImpl<$Res>
    implements _$$_DMNotificationCopyWith<$Res> {
  __$$_DMNotificationCopyWithImpl(
      _$_DMNotification _value, $Res Function(_$_DMNotification) _then)
      : super(_value, (v) => _then(v as _$_DMNotification));

  @override
  _$_DMNotification get _value => super._value as _$_DMNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_DMNotification(
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
        (other.runtimeType == runtimeType &&
            other is _$_DMNotification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_DMNotificationCopyWith<_$_DMNotification> get copyWith =>
      __$$_DMNotificationCopyWithImpl<_$_DMNotification>(this, _$identity);
}

abstract class _DMNotification extends DMNotification {
  const factory _DMNotification(
      {required final String id,
      required final int count,
      required final DMUser user}) = _$_DMNotification;
  const _DMNotification._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  DMUser get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DMNotificationCopyWith<_$_DMNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
