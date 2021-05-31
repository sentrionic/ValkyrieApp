// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendRequestDtoTearOff {
  const _$FriendRequestDtoTearOff();

  _FriendRequestDto call(
      {required String id,
      required String username,
      required String image,
      required int type}) {
    return _FriendRequestDto(
      id: id,
      username: username,
      image: image,
      type: type,
    );
  }
}

/// @nodoc
const $FriendRequestDto = _$FriendRequestDtoTearOff();

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
abstract class _$FriendRequestDtoCopyWith<$Res>
    implements $FriendRequestDtoCopyWith<$Res> {
  factory _$FriendRequestDtoCopyWith(
          _FriendRequestDto value, $Res Function(_FriendRequestDto) then) =
      __$FriendRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String image, int type});
}

/// @nodoc
class __$FriendRequestDtoCopyWithImpl<$Res>
    extends _$FriendRequestDtoCopyWithImpl<$Res>
    implements _$FriendRequestDtoCopyWith<$Res> {
  __$FriendRequestDtoCopyWithImpl(
      _FriendRequestDto _value, $Res Function(_FriendRequestDto) _then)
      : super(_value, (v) => _then(v as _FriendRequestDto));

  @override
  _FriendRequestDto get _value => super._value as _FriendRequestDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_FriendRequestDto(
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
        (other is _FriendRequestDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$FriendRequestDtoCopyWith<_FriendRequestDto> get copyWith =>
      __$FriendRequestDtoCopyWithImpl<_FriendRequestDto>(this, _$identity);
}

abstract class _FriendRequestDto extends FriendRequestDto {
  const factory _FriendRequestDto(
      {required String id,
      required String username,
      required String image,
      required int type}) = _$_FriendRequestDto;
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
  _$FriendRequestDtoCopyWith<_FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
