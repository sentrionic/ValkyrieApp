// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$DMChannelCopyWithImpl<$Res, DMChannel>;
  @useResult
  $Res call({String id, DMUser user});

  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class _$DMChannelCopyWithImpl<$Res, $Val extends DMChannel>
    implements $DMChannelCopyWith<$Res> {
  _$DMChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DMUserCopyWith<$Res> get user {
    return $DMUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DMChannelCopyWith<$Res> implements $DMChannelCopyWith<$Res> {
  factory _$$_DMChannelCopyWith(
          _$_DMChannel value, $Res Function(_$_DMChannel) then) =
      __$$_DMChannelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DMUser user});

  @override
  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMChannelCopyWithImpl<$Res>
    extends _$DMChannelCopyWithImpl<$Res, _$_DMChannel>
    implements _$$_DMChannelCopyWith<$Res> {
  __$$_DMChannelCopyWithImpl(
      _$_DMChannel _value, $Res Function(_$_DMChannel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$_DMChannel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DMChannelCopyWith<_$_DMChannel> get copyWith =>
      __$$_DMChannelCopyWithImpl<_$_DMChannel>(this, _$identity);
}

abstract class _DMChannel extends DMChannel {
  const factory _DMChannel(
      {required final String id, required final DMUser user}) = _$_DMChannel;
  const _DMChannel._() : super._();

  @override
  String get id;
  @override
  DMUser get user;
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
      _$DMNotificationCopyWithImpl<$Res, DMNotification>;
  @useResult
  $Res call({String id, int count, DMUser user});

  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class _$DMNotificationCopyWithImpl<$Res, $Val extends DMNotification>
    implements $DMNotificationCopyWith<$Res> {
  _$DMNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DMUserCopyWith<$Res> get user {
    return $DMUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
  @useResult
  $Res call({String id, int count, DMUser user});

  @override
  $DMUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMNotificationCopyWithImpl<$Res>
    extends _$DMNotificationCopyWithImpl<$Res, _$_DMNotification>
    implements _$$_DMNotificationCopyWith<$Res> {
  __$$_DMNotificationCopyWithImpl(
      _$_DMNotification _value, $Res Function(_$_DMNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
    Object? user = null,
  }) {
    return _then(_$_DMNotification(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, count, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  String get id;
  @override
  int get count;
  @override
  DMUser get user;
  @override
  @JsonKey(ignore: true)
  _$$_DMNotificationCopyWith<_$_DMNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
