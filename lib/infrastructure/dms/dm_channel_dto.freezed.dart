// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dm_channel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DMChannelDtoTearOff {
  const _$DMChannelDtoTearOff();

  _DMChannelDto call({required String id, required UserDto user}) {
    return _DMChannelDto(
      id: id,
      user: user,
    );
  }
}

/// @nodoc
const $DMChannelDto = _$DMChannelDtoTearOff();

/// @nodoc
mixin _$DMChannelDto {
  String get id => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DMChannelDtoCopyWith<DMChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMChannelDtoCopyWith<$Res> {
  factory $DMChannelDtoCopyWith(
          DMChannelDto value, $Res Function(DMChannelDto) then) =
      _$DMChannelDtoCopyWithImpl<$Res>;
  $Res call({String id, UserDto user});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$DMChannelDtoCopyWithImpl<$Res> implements $DMChannelDtoCopyWith<$Res> {
  _$DMChannelDtoCopyWithImpl(this._value, this._then);

  final DMChannelDto _value;
  // ignore: unused_field
  final $Res Function(DMChannelDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      user: user == freezed ? _value.user : user as UserDto,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$DMChannelDtoCopyWith<$Res>
    implements $DMChannelDtoCopyWith<$Res> {
  factory _$DMChannelDtoCopyWith(
          _DMChannelDto value, $Res Function(_DMChannelDto) then) =
      __$DMChannelDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, UserDto user});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$DMChannelDtoCopyWithImpl<$Res> extends _$DMChannelDtoCopyWithImpl<$Res>
    implements _$DMChannelDtoCopyWith<$Res> {
  __$DMChannelDtoCopyWithImpl(
      _DMChannelDto _value, $Res Function(_DMChannelDto) _then)
      : super(_value, (v) => _then(v as _DMChannelDto));

  @override
  _DMChannelDto get _value => super._value as _DMChannelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_DMChannelDto(
      id: id == freezed ? _value.id : id as String,
      user: user == freezed ? _value.user : user as UserDto,
    ));
  }
}

/// @nodoc
class _$_DMChannelDto extends _DMChannelDto {
  const _$_DMChannelDto({required this.id, required this.user}) : super._();

  @override
  final String id;
  @override
  final UserDto user;

  @override
  String toString() {
    return 'DMChannelDto(id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DMChannelDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$DMChannelDtoCopyWith<_DMChannelDto> get copyWith =>
      __$DMChannelDtoCopyWithImpl<_DMChannelDto>(this, _$identity);
}

abstract class _DMChannelDto extends DMChannelDto {
  const _DMChannelDto._() : super._();
  const factory _DMChannelDto({required String id, required UserDto user}) =
      _$_DMChannelDto;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  UserDto get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DMChannelDtoCopyWith<_DMChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
