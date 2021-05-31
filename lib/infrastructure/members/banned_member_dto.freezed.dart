// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banned_member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannedMemberDtoTearOff {
  const _$BannedMemberDtoTearOff();

  _BannedMemberDto call(
      {required String id, required String username, required String image}) {
    return _BannedMemberDto(
      id: id,
      username: username,
      image: image,
    );
  }
}

/// @nodoc
const $BannedMemberDto = _$BannedMemberDtoTearOff();

/// @nodoc
mixin _$BannedMemberDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannedMemberDtoCopyWith<BannedMemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannedMemberDtoCopyWith<$Res> {
  factory $BannedMemberDtoCopyWith(
          BannedMemberDto value, $Res Function(BannedMemberDto) then) =
      _$BannedMemberDtoCopyWithImpl<$Res>;
  $Res call({String id, String username, String image});
}

/// @nodoc
class _$BannedMemberDtoCopyWithImpl<$Res>
    implements $BannedMemberDtoCopyWith<$Res> {
  _$BannedMemberDtoCopyWithImpl(this._value, this._then);

  final BannedMemberDto _value;
  // ignore: unused_field
  final $Res Function(BannedMemberDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$BannedMemberDtoCopyWith<$Res>
    implements $BannedMemberDtoCopyWith<$Res> {
  factory _$BannedMemberDtoCopyWith(
          _BannedMemberDto value, $Res Function(_BannedMemberDto) then) =
      __$BannedMemberDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String image});
}

/// @nodoc
class __$BannedMemberDtoCopyWithImpl<$Res>
    extends _$BannedMemberDtoCopyWithImpl<$Res>
    implements _$BannedMemberDtoCopyWith<$Res> {
  __$BannedMemberDtoCopyWithImpl(
      _BannedMemberDto _value, $Res Function(_BannedMemberDto) _then)
      : super(_value, (v) => _then(v as _BannedMemberDto));

  @override
  _BannedMemberDto get _value => super._value as _BannedMemberDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
  }) {
    return _then(_BannedMemberDto(
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
    ));
  }
}

/// @nodoc

class _$_BannedMemberDto extends _BannedMemberDto {
  const _$_BannedMemberDto(
      {required this.id, required this.username, required this.image})
      : super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;

  @override
  String toString() {
    return 'BannedMemberDto(id: $id, username: $username, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannedMemberDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$BannedMemberDtoCopyWith<_BannedMemberDto> get copyWith =>
      __$BannedMemberDtoCopyWithImpl<_BannedMemberDto>(this, _$identity);
}

abstract class _BannedMemberDto extends BannedMemberDto {
  const factory _BannedMemberDto(
      {required String id,
      required String username,
      required String image}) = _$_BannedMemberDto;
  const _BannedMemberDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannedMemberDtoCopyWith<_BannedMemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
