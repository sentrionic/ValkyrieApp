// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guild_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuildDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get defaultChannelId => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  bool get hasNotification => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuildDtoCopyWith<GuildDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildDtoCopyWith<$Res> {
  factory $GuildDtoCopyWith(GuildDto value, $Res Function(GuildDto) then) =
      _$GuildDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String defaultChannelId,
      String ownerId,
      bool hasNotification,
      String? icon});
}

/// @nodoc
class _$GuildDtoCopyWithImpl<$Res> implements $GuildDtoCopyWith<$Res> {
  _$GuildDtoCopyWithImpl(this._value, this._then);

  final GuildDto _value;
  // ignore: unused_field
  final $Res Function(GuildDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? defaultChannelId = freezed,
    Object? ownerId = freezed,
    Object? hasNotification = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      defaultChannelId: defaultChannelId == freezed
          ? _value.defaultChannelId
          : defaultChannelId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      hasNotification: hasNotification == freezed
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GuildDtoCopyWith<$Res> implements $GuildDtoCopyWith<$Res> {
  factory _$$_GuildDtoCopyWith(
          _$_GuildDto value, $Res Function(_$_GuildDto) then) =
      __$$_GuildDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String defaultChannelId,
      String ownerId,
      bool hasNotification,
      String? icon});
}

/// @nodoc
class __$$_GuildDtoCopyWithImpl<$Res> extends _$GuildDtoCopyWithImpl<$Res>
    implements _$$_GuildDtoCopyWith<$Res> {
  __$$_GuildDtoCopyWithImpl(
      _$_GuildDto _value, $Res Function(_$_GuildDto) _then)
      : super(_value, (v) => _then(v as _$_GuildDto));

  @override
  _$_GuildDto get _value => super._value as _$_GuildDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? defaultChannelId = freezed,
    Object? ownerId = freezed,
    Object? hasNotification = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_GuildDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      defaultChannelId: defaultChannelId == freezed
          ? _value.defaultChannelId
          : defaultChannelId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      hasNotification: hasNotification == freezed
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GuildDto extends _GuildDto {
  const _$_GuildDto(
      {required this.id,
      required this.name,
      required this.defaultChannelId,
      required this.ownerId,
      required this.hasNotification,
      this.icon})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.defaultChannelId, defaultChannelId) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality()
                .equals(other.hasNotification, hasNotification) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(defaultChannelId),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(hasNotification),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_GuildDtoCopyWith<_$_GuildDto> get copyWith =>
      __$$_GuildDtoCopyWithImpl<_$_GuildDto>(this, _$identity);
}

abstract class _GuildDto extends GuildDto {
  const factory _GuildDto(
      {required final String id,
      required final String name,
      required final String defaultChannelId,
      required final String ownerId,
      required final bool hasNotification,
      final String? icon}) = _$_GuildDto;
  const _GuildDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get defaultChannelId => throw _privateConstructorUsedError;
  @override
  String get ownerId => throw _privateConstructorUsedError;
  @override
  bool get hasNotification => throw _privateConstructorUsedError;
  @override
  String? get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GuildDtoCopyWith<_$_GuildDto> get copyWith =>
      throw _privateConstructorUsedError;
}
