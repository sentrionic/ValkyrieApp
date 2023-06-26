// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guild_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuildDto _$GuildDtoFromJson(Map<String, dynamic> json) {
  return _GuildDto.fromJson(json);
}

/// @nodoc
mixin _$GuildDto {
  String get id => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "default_channel_id")
  String get defaultChannelId => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  bool get hasNotification => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuildDtoCopyWith<GuildDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildDtoCopyWith<$Res> {
  factory $GuildDtoCopyWith(GuildDto value, $Res Function(GuildDto) then) =
      _$GuildDtoCopyWithImpl<$Res, GuildDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "default_channel_id") String defaultChannelId,
      String ownerId,
      bool hasNotification,
      String? icon});
}

/// @nodoc
class _$GuildDtoCopyWithImpl<$Res, $Val extends GuildDto>
    implements $GuildDtoCopyWith<$Res> {
  _$GuildDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? defaultChannelId = null,
    Object? ownerId = null,
    Object? hasNotification = null,
    Object? icon = freezed,
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
      defaultChannelId: null == defaultChannelId
          ? _value.defaultChannelId
          : defaultChannelId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      hasNotification: null == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuildDtoCopyWith<$Res> implements $GuildDtoCopyWith<$Res> {
  factory _$$_GuildDtoCopyWith(
          _$_GuildDto value, $Res Function(_$_GuildDto) then) =
      __$$_GuildDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "default_channel_id") String defaultChannelId,
      String ownerId,
      bool hasNotification,
      String? icon});
}

/// @nodoc
class __$$_GuildDtoCopyWithImpl<$Res>
    extends _$GuildDtoCopyWithImpl<$Res, _$_GuildDto>
    implements _$$_GuildDtoCopyWith<$Res> {
  __$$_GuildDtoCopyWithImpl(
      _$_GuildDto _value, $Res Function(_$_GuildDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? defaultChannelId = null,
    Object? ownerId = null,
    Object? hasNotification = null,
    Object? icon = freezed,
  }) {
    return _then(_$_GuildDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      defaultChannelId: null == defaultChannelId
          ? _value.defaultChannelId
          : defaultChannelId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      hasNotification: null == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuildDto extends _GuildDto {
  const _$_GuildDto(
      {required this.id,
      required this.name,
      @JsonKey(name: "default_channel_id") required this.defaultChannelId,
      required this.ownerId,
      required this.hasNotification,
      this.icon})
      : super._();

  factory _$_GuildDto.fromJson(Map<String, dynamic> json) =>
      _$$_GuildDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "default_channel_id")
  final String defaultChannelId;
  @override
  final String ownerId;
  @override
  final bool hasNotification;
  @override
  final String? icon;

  @override
  String toString() {
    return 'GuildDto(id: $id, name: $name, defaultChannelId: $defaultChannelId, ownerId: $ownerId, hasNotification: $hasNotification, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuildDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.defaultChannelId, defaultChannelId) ||
                other.defaultChannelId == defaultChannelId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.hasNotification, hasNotification) ||
                other.hasNotification == hasNotification) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, defaultChannelId, ownerId, hasNotification, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuildDtoCopyWith<_$_GuildDto> get copyWith =>
      __$$_GuildDtoCopyWithImpl<_$_GuildDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuildDtoToJson(
      this,
    );
  }
}

abstract class _GuildDto extends GuildDto {
  const factory _GuildDto(
      {required final String id,
      required final String name,
      @JsonKey(name: "default_channel_id")
          required final String defaultChannelId,
      required final String ownerId,
      required final bool hasNotification,
      final String? icon}) = _$_GuildDto;
  const _GuildDto._() : super._();

  factory _GuildDto.fromJson(Map<String, dynamic> json) = _$_GuildDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "default_channel_id")
  String get defaultChannelId;
  @override
  String get ownerId;
  @override
  bool get hasNotification;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_GuildDtoCopyWith<_$_GuildDto> get copyWith =>
      throw _privateConstructorUsedError;
}
