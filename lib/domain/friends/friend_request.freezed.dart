// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$FriendRequestCopyWithImpl<$Res>;
  $Res call({String id, String username, String image, RequestType type});
}

/// @nodoc
class _$FriendRequestCopyWithImpl<$Res>
    implements $FriendRequestCopyWith<$Res> {
  _$FriendRequestCopyWithImpl(this._value, this._then);

  final FriendRequest _value;
  // ignore: unused_field
  final $Res Function(FriendRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? type = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequestType,
    ));
  }
}

/// @nodoc
abstract class _$$_FriendRequestCopyWith<$Res>
    implements $FriendRequestCopyWith<$Res> {
  factory _$$_FriendRequestCopyWith(
          _$_FriendRequest value, $Res Function(_$_FriendRequest) then) =
      __$$_FriendRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String image, RequestType type});
}

/// @nodoc
class __$$_FriendRequestCopyWithImpl<$Res>
    extends _$FriendRequestCopyWithImpl<$Res>
    implements _$$_FriendRequestCopyWith<$Res> {
  __$$_FriendRequestCopyWithImpl(
      _$_FriendRequest _value, $Res Function(_$_FriendRequest) _then)
      : super(_value, (v) => _then(v as _$_FriendRequest));

  @override
  _$_FriendRequest get _value => super._value as _$_FriendRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_FriendRequest(
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
      type: type == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
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
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  RequestType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendRequestCopyWith<_$_FriendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
