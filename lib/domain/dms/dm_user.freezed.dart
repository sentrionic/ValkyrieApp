// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dm_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$DMUserCopyWithImpl<$Res, DMUser>;
  @useResult
  $Res call(
      {String id, String username, String image, bool isOnline, bool isFriend});
}

/// @nodoc
class _$DMUserCopyWithImpl<$Res, $Val extends DMUser>
    implements $DMUserCopyWith<$Res> {
  _$DMUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
    Object? isOnline = null,
    Object? isFriend = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: null == isFriend
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DMUserCopyWith<$Res> implements $DMUserCopyWith<$Res> {
  factory _$$_DMUserCopyWith(_$_DMUser value, $Res Function(_$_DMUser) then) =
      __$$_DMUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String username, String image, bool isOnline, bool isFriend});
}

/// @nodoc
class __$$_DMUserCopyWithImpl<$Res>
    extends _$DMUserCopyWithImpl<$Res, _$_DMUser>
    implements _$$_DMUserCopyWith<$Res> {
  __$$_DMUserCopyWithImpl(_$_DMUser _value, $Res Function(_$_DMUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
    Object? isOnline = null,
    Object? isFriend = null,
  }) {
    return _then(_$_DMUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: null == isFriend
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
        (other.runtimeType == runtimeType &&
            other is _$_DMUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isFriend, isFriend) ||
                other.isFriend == isFriend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, image, isOnline, isFriend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DMUserCopyWith<_$_DMUser> get copyWith =>
      __$$_DMUserCopyWithImpl<_$_DMUser>(this, _$identity);
}

abstract class _DMUser extends DMUser {
  const factory _DMUser(
      {required final String id,
      required final String username,
      required final String image,
      required final bool isOnline,
      required final bool isFriend}) = _$_DMUser;
  const _DMUser._() : super._();

  @override
  String get id;
  @override
  String get username;
  @override
  String get image;
  @override
  bool get isOnline;
  @override
  bool get isFriend;
  @override
  @JsonKey(ignore: true)
  _$$_DMUserCopyWith<_$_DMUser> get copyWith =>
      throw _privateConstructorUsedError;
}
