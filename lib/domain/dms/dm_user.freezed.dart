// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dm_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DMUserTearOff {
  const _$DMUserTearOff();

  _DMUser call(
      {required String id,
      required String username,
      required String image,
      required bool isOnline,
      required bool isFriend}) {
    return _DMUser(
      id: id,
      username: username,
      image: image,
      isOnline: isOnline,
      isFriend: isFriend,
    );
  }
}

/// @nodoc
const $DMUser = _$DMUserTearOff();

/// @nodoc
mixin _$DMUser {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isFriend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DMUserCopyWith<DMUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMUserCopyWith<$Res> {
  factory $DMUserCopyWith(DMUser value, $Res Function(DMUser) then) =
      _$DMUserCopyWithImpl<$Res>;
  $Res call(
      {String id, String username, String image, bool isOnline, bool isFriend});
}

/// @nodoc
class _$DMUserCopyWithImpl<$Res> implements $DMUserCopyWith<$Res> {
  _$DMUserCopyWithImpl(this._value, this._then);

  final DMUser _value;
  // ignore: unused_field
  final $Res Function(DMUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
    Object? isFriend = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: isFriend == freezed
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DMUserCopyWith<$Res> implements $DMUserCopyWith<$Res> {
  factory _$DMUserCopyWith(_DMUser value, $Res Function(_DMUser) then) =
      __$DMUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String username, String image, bool isOnline, bool isFriend});
}

/// @nodoc
class __$DMUserCopyWithImpl<$Res> extends _$DMUserCopyWithImpl<$Res>
    implements _$DMUserCopyWith<$Res> {
  __$DMUserCopyWithImpl(_DMUser _value, $Res Function(_DMUser) _then)
      : super(_value, (v) => _then(v as _DMUser));

  @override
  _DMUser get _value => super._value as _DMUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
    Object? isFriend = freezed,
  }) {
    return _then(_DMUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: isFriend == freezed
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DMUser extends _DMUser {
  const _$_DMUser(
      {required this.id,
      required this.username,
      required this.image,
      required this.isOnline,
      required this.isFriend})
      : super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;
  @override
  final bool isOnline;
  @override
  final bool isFriend;

  @override
  String toString() {
    return 'DMUser(id: $id, username: $username, image: $image, isOnline: $isOnline, isFriend: $isFriend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DMUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.isOnline, isOnline) ||
                const DeepCollectionEquality()
                    .equals(other.isOnline, isOnline)) &&
            (identical(other.isFriend, isFriend) ||
                const DeepCollectionEquality()
                    .equals(other.isFriend, isFriend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(isOnline) ^
      const DeepCollectionEquality().hash(isFriend);

  @JsonKey(ignore: true)
  @override
  _$DMUserCopyWith<_DMUser> get copyWith =>
      __$DMUserCopyWithImpl<_DMUser>(this, _$identity);
}

abstract class _DMUser extends DMUser {
  const factory _DMUser(
      {required String id,
      required String username,
      required String image,
      required bool isOnline,
      required bool isFriend}) = _$_DMUser;
  const _DMUser._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isOnline => throw _privateConstructorUsedError;
  @override
  bool get isFriend => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DMUserCopyWith<_DMUser> get copyWith => throw _privateConstructorUsedError;
}
