// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelDto _$ChannelDtoFromJson(Map<String, dynamic> json) {
  return _ChannelDto.fromJson(json);
}

/// @nodoc
mixin _$ChannelDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get hasNotification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelDtoCopyWith<ChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelDtoCopyWith<$Res> {
  factory $ChannelDtoCopyWith(
          ChannelDto value, $Res Function(ChannelDto) then) =
      _$ChannelDtoCopyWithImpl<$Res, ChannelDto>;
  @useResult
  $Res call({String id, String name, bool isPublic, bool hasNotification});
}

/// @nodoc
class _$ChannelDtoCopyWithImpl<$Res, $Val extends ChannelDto>
    implements $ChannelDtoCopyWith<$Res> {
  _$ChannelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isPublic = null,
    Object? hasNotification = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotification: null == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelDtoCopyWith<$Res>
    implements $ChannelDtoCopyWith<$Res> {
  factory _$$_ChannelDtoCopyWith(
          _$_ChannelDto value, $Res Function(_$_ChannelDto) then) =
      __$$_ChannelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, bool isPublic, bool hasNotification});
}

/// @nodoc
class __$$_ChannelDtoCopyWithImpl<$Res>
    extends _$ChannelDtoCopyWithImpl<$Res, _$_ChannelDto>
    implements _$$_ChannelDtoCopyWith<$Res> {
  __$$_ChannelDtoCopyWithImpl(
      _$_ChannelDto _value, $Res Function(_$_ChannelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isPublic = null,
    Object? hasNotification = null,
  }) {
    return _then(_$_ChannelDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotification: null == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelDto extends _ChannelDto {
  const _$_ChannelDto(
      {required this.id,
      required this.name,
      required this.isPublic,
      required this.hasNotification})
      : super._();

  factory _$_ChannelDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isPublic;
  @override
  final bool hasNotification;

  @override
  String toString() {
    return 'ChannelDto(id: $id, name: $name, isPublic: $isPublic, hasNotification: $hasNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.hasNotification, hasNotification) ||
                other.hasNotification == hasNotification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, isPublic, hasNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelDtoCopyWith<_$_ChannelDto> get copyWith =>
      __$$_ChannelDtoCopyWithImpl<_$_ChannelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelDtoToJson(
      this,
    );
  }
}

abstract class _ChannelDto extends ChannelDto {
  const factory _ChannelDto(
      {required final String id,
      required final String name,
      required final bool isPublic,
      required final bool hasNotification}) = _$_ChannelDto;
  const _ChannelDto._() : super._();

  factory _ChannelDto.fromJson(Map<String, dynamic> json) =
      _$_ChannelDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isPublic;
  @override
  bool get hasNotification;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelDtoCopyWith<_$_ChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
