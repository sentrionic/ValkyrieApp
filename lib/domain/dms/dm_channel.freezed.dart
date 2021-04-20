// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
