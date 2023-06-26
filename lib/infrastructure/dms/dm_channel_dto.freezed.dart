// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dm_channel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DMChannelDto _$DMChannelDtoFromJson(Map<String, dynamic> json) {
  return _DMChannelDto.fromJson(json);
}

/// @nodoc
mixin _$DMChannelDto {
  String get id => throw _privateConstructorUsedError;
  DMUserDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DMChannelDtoCopyWith<DMChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMChannelDtoCopyWith<$Res> {
  factory $DMChannelDtoCopyWith(
          DMChannelDto value, $Res Function(DMChannelDto) then) =
      _$DMChannelDtoCopyWithImpl<$Res, DMChannelDto>;
  @useResult
  $Res call({String id, DMUserDto user});

  $DMUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$DMChannelDtoCopyWithImpl<$Res, $Val extends DMChannelDto>
    implements $DMChannelDtoCopyWith<$Res> {
  _$DMChannelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DMUserDtoCopyWith<$Res> get user {
    return $DMUserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
  @useResult
  $Res call({String id, DMUserDto user});

  @override
  $DMUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMChannelDtoCopyWithImpl<$Res>
    extends _$DMChannelDtoCopyWithImpl<$Res, _$_DMChannelDto>
    implements _$$_DMChannelDtoCopyWith<$Res> {
  __$$_DMChannelDtoCopyWithImpl(
      _$_DMChannelDto _value, $Res Function(_$_DMChannelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$_DMChannelDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DMChannelDto extends _DMChannelDto {
  const _$_DMChannelDto({required this.id, required this.user}) : super._();

  factory _$_DMChannelDto.fromJson(Map<String, dynamic> json) =>
      _$$_DMChannelDtoFromJson(json);

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DMChannelDtoCopyWith<_$_DMChannelDto> get copyWith =>
      __$$_DMChannelDtoCopyWithImpl<_$_DMChannelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DMChannelDtoToJson(
      this,
    );
  }
}

abstract class _DMChannelDto extends DMChannelDto {
  const factory _DMChannelDto(
      {required final String id,
      required final DMUserDto user}) = _$_DMChannelDto;
  const _DMChannelDto._() : super._();

  factory _DMChannelDto.fromJson(Map<String, dynamic> json) =
      _$_DMChannelDto.fromJson;

  @override
  String get id;
  @override
  DMUserDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_DMChannelDtoCopyWith<_$_DMChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DMNotificationDto _$DMNotificationDtoFromJson(Map<String, dynamic> json) {
  return _DMNotificationDto.fromJson(json);
}

/// @nodoc
mixin _$DMNotificationDto {
  String get id => throw _privateConstructorUsedError;
  DMUserDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DMNotificationDtoCopyWith<DMNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMNotificationDtoCopyWith<$Res> {
  factory $DMNotificationDtoCopyWith(
          DMNotificationDto value, $Res Function(DMNotificationDto) then) =
      _$DMNotificationDtoCopyWithImpl<$Res, DMNotificationDto>;
  @useResult
  $Res call({String id, DMUserDto user});

  $DMUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$DMNotificationDtoCopyWithImpl<$Res, $Val extends DMNotificationDto>
    implements $DMNotificationDtoCopyWith<$Res> {
  _$DMNotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DMUserDtoCopyWith<$Res> get user {
    return $DMUserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
  @useResult
  $Res call({String id, DMUserDto user});

  @override
  $DMUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DMNotificationDtoCopyWithImpl<$Res>
    extends _$DMNotificationDtoCopyWithImpl<$Res, _$_DMNotificationDto>
    implements _$$_DMNotificationDtoCopyWith<$Res> {
  __$$_DMNotificationDtoCopyWithImpl(
      _$_DMNotificationDto _value, $Res Function(_$_DMNotificationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$_DMNotificationDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DMUserDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DMNotificationDto extends _DMNotificationDto {
  const _$_DMNotificationDto({required this.id, required this.user})
      : super._();

  factory _$_DMNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$_DMNotificationDtoFromJson(json);

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DMNotificationDtoCopyWith<_$_DMNotificationDto> get copyWith =>
      __$$_DMNotificationDtoCopyWithImpl<_$_DMNotificationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DMNotificationDtoToJson(
      this,
    );
  }
}

abstract class _DMNotificationDto extends DMNotificationDto {
  const factory _DMNotificationDto(
      {required final String id,
      required final DMUserDto user}) = _$_DMNotificationDto;
  const _DMNotificationDto._() : super._();

  factory _DMNotificationDto.fromJson(Map<String, dynamic> json) =
      _$_DMNotificationDto.fromJson;

  @override
  String get id;
  @override
  DMUserDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_DMNotificationDtoCopyWith<_$_DMNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
