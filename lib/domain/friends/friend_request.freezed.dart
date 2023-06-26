// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendRequest {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  RequestType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendRequestCopyWith<FriendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestCopyWith<$Res> {
  factory $FriendRequestCopyWith(
          FriendRequest value, $Res Function(FriendRequest) then) =
      _$FriendRequestCopyWithImpl<$Res, FriendRequest>;
  @useResult
  $Res call({String id, String username, String image, RequestType type});
}

/// @nodoc
class _$FriendRequestCopyWithImpl<$Res, $Val extends FriendRequest>
    implements $FriendRequestCopyWith<$Res> {
  _$FriendRequestCopyWithImpl(this._value, this._then);

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
    Object? type = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequestType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendRequestCopyWith<$Res>
    implements $FriendRequestCopyWith<$Res> {
  factory _$$_FriendRequestCopyWith(
          _$_FriendRequest value, $Res Function(_$_FriendRequest) then) =
      __$$_FriendRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, String image, RequestType type});
}

/// @nodoc
class __$$_FriendRequestCopyWithImpl<$Res>
    extends _$FriendRequestCopyWithImpl<$Res, _$_FriendRequest>
    implements _$$_FriendRequestCopyWith<$Res> {
  __$$_FriendRequestCopyWithImpl(
      _$_FriendRequest _value, $Res Function(_$_FriendRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
    Object? type = null,
  }) {
    return _then(_$_FriendRequest(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequestType,
    ));
  }
}

/// @nodoc

class _$_FriendRequest extends _FriendRequest {
  const _$_FriendRequest(
      {required this.id,
      required this.username,
      required this.image,
      required this.type})
      : super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;
  @override
  final RequestType type;

  @override
  String toString() {
    return 'FriendRequest(id: $id, username: $username, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username, image, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendRequestCopyWith<_$_FriendRequest> get copyWith =>
      __$$_FriendRequestCopyWithImpl<_$_FriendRequest>(this, _$identity);
}

abstract class _FriendRequest extends FriendRequest {
  const factory _FriendRequest(
      {required final String id,
      required final String username,
      required final String image,
      required final RequestType type}) = _$_FriendRequest;
  const _FriendRequest._() : super._();

  @override
  String get id;
  @override
  String get username;
  @override
  String get image;
  @override
  RequestType get type;
  @override
  @JsonKey(ignore: true)
  _$$_FriendRequestCopyWith<_$_FriendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
