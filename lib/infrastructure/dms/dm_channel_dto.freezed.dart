// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dm_channel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DMChannelDto {
  String get id => throw _privateConstructorUsedError;
  DMUserDto get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DMChannelDtoCopyWith<DMChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMChannelDtoCopyWith<$Res> {
  factory $DMChannelDtoCopyWith(
          DMChannelDto value, $Res Function(DMChannelDto) then) =
      _$DMChannelDtoCopyWithImpl<$Res>;
  $Res call({String id, DMUserDto user});

  $DMUserDtoCopyWith<$Res> get user;
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ));
  }

  @override
  $DMUserDtoCopyWith<$Res> get user {
    return $DMUserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_DMChannelDtoCopyWith<$Res>
    implements $DMChannelDtoCopyWith<$Res> {
  factory _$$_DMChannelDtoCopyWith(
          _$_DMChannelDto value, $Res Function(_$_DMChannelDto) then) =
      __$$_DMChannelDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, DMUserDto user});

  @override
  $DMUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMChannelDtoCopyWithImpl<$Res>
    extends _$DMChannelDtoCopyWithImpl<$Res>
    implements _$$_DMChannelDtoCopyWith<$Res> {
  __$$_DMChannelDtoCopyWithImpl(
      _$_DMChannelDto _value, $Res Function(_$_DMChannelDto) _then)
      : super(_value, (v) => _then(v as _$_DMChannelDto));

  @override
  _$_DMChannelDto get _value => super._value as _$_DMChannelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_DMChannelDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ));
  }
}

/// @nodoc

class _$_DMChannelDto extends _DMChannelDto {
  const _$_DMChannelDto({required this.id, required this.user}) : super._();

  @override
  final String id;
  @override
  final DMUserDto user;

  @override
  String toString() {
    return 'DMChannelDto(id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DMChannelDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_DMChannelDtoCopyWith<_$_DMChannelDto> get copyWith =>
      __$$_DMChannelDtoCopyWithImpl<_$_DMChannelDto>(this, _$identity);
}

abstract class _DMChannelDto extends DMChannelDto {
  const factory _DMChannelDto(
      {required final String id,
      required final DMUserDto user}) = _$_DMChannelDto;
  const _DMChannelDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DMUserDto get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DMChannelDtoCopyWith<_$_DMChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DMNotificationDto {
  String get id => throw _privateConstructorUsedError;
  DMUserDto get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DMNotificationDtoCopyWith<DMNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMNotificationDtoCopyWith<$Res> {
  factory $DMNotificationDtoCopyWith(
          DMNotificationDto value, $Res Function(DMNotificationDto) then) =
      _$DMNotificationDtoCopyWithImpl<$Res>;
  $Res call({String id, DMUserDto user});

  $DMUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$DMNotificationDtoCopyWithImpl<$Res>
    implements $DMNotificationDtoCopyWith<$Res> {
  _$DMNotificationDtoCopyWithImpl(this._value, this._then);

  final DMNotificationDto _value;
  // ignore: unused_field
  final $Res Function(DMNotificationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ));
  }

  @override
  $DMUserDtoCopyWith<$Res> get user {
    return $DMUserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_DMNotificationDtoCopyWith<$Res>
    implements $DMNotificationDtoCopyWith<$Res> {
  factory _$$_DMNotificationDtoCopyWith(_$_DMNotificationDto value,
          $Res Function(_$_DMNotificationDto) then) =
      __$$_DMNotificationDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, DMUserDto user});

  @override
  $DMUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMNotificationDtoCopyWithImpl<$Res>
    extends _$DMNotificationDtoCopyWithImpl<$Res>
    implements _$$_DMNotificationDtoCopyWith<$Res> {
  __$$_DMNotificationDtoCopyWithImpl(
      _$_DMNotificationDto _value, $Res Function(_$_DMNotificationDto) _then)
      : super(_value, (v) => _then(v as _$_DMNotificationDto));

  @override
  _$_DMNotificationDto get _value => super._value as _$_DMNotificationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_DMNotificationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ));
  }
}

/// @nodoc

class _$_DMNotificationDto extends _DMNotificationDto {
  const _$_DMNotificationDto({required this.id, required this.user})
      : super._();

  @override
  final String id;
  @override
  final DMUserDto user;

  @override
  String toString() {
    return 'DMNotificationDto(id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DMNotificationDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_DMNotificationDtoCopyWith<_$_DMNotificationDto> get copyWith =>
      __$$_DMNotificationDtoCopyWithImpl<_$_DMNotificationDto>(
          this, _$identity);
}

abstract class _DMNotificationDto extends DMNotificationDto {
  const factory _DMNotificationDto(
      {required final String id,
      required final DMUserDto user}) = _$_DMNotificationDto;
  const _DMNotificationDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DMUserDto get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DMNotificationDtoCopyWith<_$_DMNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
