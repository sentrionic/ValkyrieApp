// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Friend {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendCopyWith<Friend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendCopyWith<$Res> {
  factory $FriendCopyWith(Friend value, $Res Function(Friend) then) =
      _$FriendCopyWithImpl<$Res>;
  $Res call({String id, String username, String image, bool isOnline});
}

/// @nodoc
class _$FriendCopyWithImpl<$Res> implements $FriendCopyWith<$Res> {
  _$FriendCopyWithImpl(this._value, this._then);

  final Friend _value;
  // ignore: unused_field
  final $Res Function(Friend) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_FriendCopyWith<$Res> implements $FriendCopyWith<$Res> {
  factory _$$_FriendCopyWith(_$_Friend value, $Res Function(_$_Friend) then) =
      __$$_FriendCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String image, bool isOnline});
}

/// @nodoc
class __$$_FriendCopyWithImpl<$Res> extends _$FriendCopyWithImpl<$Res>
    implements _$$_FriendCopyWith<$Res> {
  __$$_FriendCopyWithImpl(_$_Friend _value, $Res Function(_$_Friend) _then)
      : super(_value, (v) => _then(v as _$_Friend));

  @override
  _$_Friend get _value => super._value as _$_Friend;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_$_Friend(
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
    ));
  }
}

/// @nodoc

class _$_Friend extends _Friend {
  const _$_Friend(
      {required this.id,
      required this.username,
      required this.image,
      required this.isOnline})
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
  String toString() {
    return 'Friend(id: $id, username: $username, image: $image, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Friend &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isOnline));

  @JsonKey(ignore: true)
  @override
  _$$_FriendCopyWith<_$_Friend> get copyWith =>
      __$$_FriendCopyWithImpl<_$_Friend>(this, _$identity);
}

abstract class _Friend extends Friend {
  const factory _Friend(
      {required final String id,
      required final String username,
      required final String image,
      required final bool isOnline}) = _$_Friend;
  const _Friend._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isOnline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendCopyWith<_$_Friend> get copyWith =>
      throw _privateConstructorUsedError;
}
