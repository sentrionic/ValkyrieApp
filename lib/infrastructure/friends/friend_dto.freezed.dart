// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendDtoCopyWith<FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendDtoCopyWith<$Res> {
  factory $FriendDtoCopyWith(FriendDto value, $Res Function(FriendDto) then) =
      _$FriendDtoCopyWithImpl<$Res>;
  $Res call({String id, String username, String image, bool isOnline});
}

/// @nodoc
class _$FriendDtoCopyWithImpl<$Res> implements $FriendDtoCopyWith<$Res> {
  _$FriendDtoCopyWithImpl(this._value, this._then);

  final FriendDto _value;
  // ignore: unused_field
  final $Res Function(FriendDto) _then;

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
abstract class _$$_FriendDtoCopyWith<$Res> implements $FriendDtoCopyWith<$Res> {
  factory _$$_FriendDtoCopyWith(
          _$_FriendDto value, $Res Function(_$_FriendDto) then) =
      __$$_FriendDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String image, bool isOnline});
}

/// @nodoc
class __$$_FriendDtoCopyWithImpl<$Res> extends _$FriendDtoCopyWithImpl<$Res>
    implements _$$_FriendDtoCopyWith<$Res> {
  __$$_FriendDtoCopyWithImpl(
      _$_FriendDto _value, $Res Function(_$_FriendDto) _then)
      : super(_value, (v) => _then(v as _$_FriendDto));

  @override
  _$_FriendDto get _value => super._value as _$_FriendDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_$_FriendDto(
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

class _$_FriendDto extends _FriendDto {
  const _$_FriendDto(
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
    return 'FriendDto(id: $id, username: $username, image: $image, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendDto &&
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
  _$$_FriendDtoCopyWith<_$_FriendDto> get copyWith =>
      __$$_FriendDtoCopyWithImpl<_$_FriendDto>(this, _$identity);
}

abstract class _FriendDto extends FriendDto {
  const factory _FriendDto(
      {required final String id,
      required final String username,
      required final String image,
      required final bool isOnline}) = _$_FriendDto;
  const _FriendDto._() : super._();

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
  _$$_FriendDtoCopyWith<_$_FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}
