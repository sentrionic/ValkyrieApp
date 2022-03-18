// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountDtoTearOff {
  const _$AccountDtoTearOff();

  _AccountDto call(
      {required String id,
      required String username,
      required String email,
      required String image}) {
    return _AccountDto(
      id: id,
      username: username,
      email: email,
      image: image,
    );
  }
}

/// @nodoc
const $AccountDto = _$AccountDtoTearOff();

/// @nodoc
mixin _$AccountDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDtoCopyWith<AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDtoCopyWith<$Res> {
  factory $AccountDtoCopyWith(
          AccountDto value, $Res Function(AccountDto) then) =
      _$AccountDtoCopyWithImpl<$Res>;
  $Res call({String id, String username, String email, String image});
}

/// @nodoc
class _$AccountDtoCopyWithImpl<$Res> implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._value, this._then);

  final AccountDto _value;
  // ignore: unused_field
  final $Res Function(AccountDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountDtoCopyWith<$Res> implements $AccountDtoCopyWith<$Res> {
  factory _$AccountDtoCopyWith(
          _AccountDto value, $Res Function(_AccountDto) then) =
      __$AccountDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String email, String image});
}

/// @nodoc
class __$AccountDtoCopyWithImpl<$Res> extends _$AccountDtoCopyWithImpl<$Res>
    implements _$AccountDtoCopyWith<$Res> {
  __$AccountDtoCopyWithImpl(
      _AccountDto _value, $Res Function(_AccountDto) _then)
      : super(_value, (v) => _then(v as _AccountDto));

  @override
  _AccountDto get _value => super._value as _AccountDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? image = freezed,
  }) {
    return _then(_AccountDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountDto extends _AccountDto {
  const _$_AccountDto(
      {required this.id,
      required this.username,
      required this.email,
      required this.image})
      : super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String image;

  @override
  String toString() {
    return 'AccountDto(id: $id, username: $username, email: $email, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$AccountDtoCopyWith<_AccountDto> get copyWith =>
      __$AccountDtoCopyWithImpl<_AccountDto>(this, _$identity);
}

abstract class _AccountDto extends AccountDto {
  const factory _AccountDto(
      {required String id,
      required String username,
      required String email,
      required String image}) = _$_AccountDto;
  const _AccountDto._() : super._();

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$AccountDtoCopyWith<_AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
