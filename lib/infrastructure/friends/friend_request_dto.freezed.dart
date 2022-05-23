// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendRequestDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendRequestDtoCopyWith<FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestDtoCopyWith<$Res> {
  factory $FriendRequestDtoCopyWith(
          FriendRequestDto value, $Res Function(FriendRequestDto) then) =
      _$FriendRequestDtoCopyWithImpl<$Res>;
  $Res call({String id, String username, String image, int type});
}

/// @nodoc
class _$FriendRequestDtoCopyWithImpl<$Res>
    implements $FriendRequestDtoCopyWith<$Res> {
  _$FriendRequestDtoCopyWithImpl(this._value, this._then);

  final FriendRequestDto _value;
  // ignore: unused_field
  final $Res Function(FriendRequestDto) _then;

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
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_FriendRequestDtoCopyWith<$Res>
    implements $FriendRequestDtoCopyWith<$Res> {
  factory _$$_FriendRequestDtoCopyWith(
          _$_FriendRequestDto value, $Res Function(_$_FriendRequestDto) then) =
      __$$_FriendRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String image, int type});
}

/// @nodoc
class __$$_FriendRequestDtoCopyWithImpl<$Res>
    extends _$FriendRequestDtoCopyWithImpl<$Res>
    implements _$$_FriendRequestDtoCopyWith<$Res> {
  __$$_FriendRequestDtoCopyWithImpl(
      _$_FriendRequestDto _value, $Res Function(_$_FriendRequestDto) _then)
      : super(_value, (v) => _then(v as _$_FriendRequestDto));

  @override
  _$_FriendRequestDto get _value => super._value as _$_FriendRequestDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_FriendRequestDto(
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
              as int,
    ));
  }
}

/// @nodoc

class _$_FriendRequestDto extends _FriendRequestDto {
  const _$_FriendRequestDto(
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
  final int type;

  @override
  String toString() {
    return 'FriendRequestDto(id: $id, username: $username, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendRequestDto &&
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
  _$$_FriendRequestDtoCopyWith<_$_FriendRequestDto> get copyWith =>
      __$$_FriendRequestDtoCopyWithImpl<_$_FriendRequestDto>(this, _$identity);
}

abstract class _FriendRequestDto extends FriendRequestDto {
  const factory _FriendRequestDto(
      {required final String id,
      required final String username,
      required final String image,
      required final int type}) = _$_FriendRequestDto;
  const _FriendRequestDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendRequestDtoCopyWith<_$_FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
