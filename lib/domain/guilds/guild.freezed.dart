// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guild.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Guild {
  String get id => throw _privateConstructorUsedError;
  GuildName get name => throw _privateConstructorUsedError;
  String get defaultChannel => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  bool get hasNotification => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuildCopyWith<Guild> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildCopyWith<$Res> {
  factory $GuildCopyWith(Guild value, $Res Function(Guild) then) =
      _$GuildCopyWithImpl<$Res>;
  $Res call(
      {String id,
      GuildName name,
      String defaultChannel,
      String ownerId,
      bool hasNotification,
      String? icon});
}

/// @nodoc
class _$GuildCopyWithImpl<$Res> implements $GuildCopyWith<$Res> {
  _$GuildCopyWithImpl(this._value, this._then);

  final Guild _value;
  // ignore: unused_field
  final $Res Function(Guild) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? defaultChannel = freezed,
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
              as GuildName,
      defaultChannel: defaultChannel == freezed
          ? _value.defaultChannel
          : defaultChannel // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_GuildCopyWith<$Res> implements $GuildCopyWith<$Res> {
  factory _$$_GuildCopyWith(_$_Guild value, $Res Function(_$_Guild) then) =
      __$$_GuildCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      GuildName name,
      String defaultChannel,
      String ownerId,
      bool hasNotification,
      String? icon});
}

/// @nodoc
class __$$_GuildCopyWithImpl<$Res> extends _$GuildCopyWithImpl<$Res>
    implements _$$_GuildCopyWith<$Res> {
  __$$_GuildCopyWithImpl(_$_Guild _value, $Res Function(_$_Guild) _then)
      : super(_value, (v) => _then(v as _$_Guild));

  @override
  _$_Guild get _value => super._value as _$_Guild;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? defaultChannel = freezed,
    Object? ownerId = freezed,
    Object? hasNotification = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_Guild(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GuildName,
      defaultChannel: defaultChannel == freezed
          ? _value.defaultChannel
          : defaultChannel // ignore: cast_nullable_to_non_nullable
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

class _$_Guild extends _Guild {
  const _$_Guild(
      {required this.id,
      required this.name,
      required this.defaultChannel,
      required this.ownerId,
      required this.hasNotification,
      this.icon})
      : super._();

  @override
  final String id;
  @override
  final GuildName name;
  @override
  final String defaultChannel;
  @override
  final String ownerId;
  @override
  final bool hasNotification;
  @override
  final String? icon;

  @override
  String toString() {
    return 'Guild(id: $id, name: $name, defaultChannel: $defaultChannel, ownerId: $ownerId, hasNotification: $hasNotification, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Guild &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.defaultChannel, defaultChannel) &&
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
      const DeepCollectionEquality().hash(defaultChannel),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(hasNotification),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_GuildCopyWith<_$_Guild> get copyWith =>
      __$$_GuildCopyWithImpl<_$_Guild>(this, _$identity);
}

abstract class _Guild extends Guild {
  const factory _Guild(
      {required final String id,
      required final GuildName name,
      required final String defaultChannel,
      required final String ownerId,
      required final bool hasNotification,
      final String? icon}) = _$_Guild;
  const _Guild._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  GuildName get name => throw _privateConstructorUsedError;
  @override
  String get defaultChannel => throw _privateConstructorUsedError;
  @override
  String get ownerId => throw _privateConstructorUsedError;
  @override
  bool get hasNotification => throw _privateConstructorUsedError;
  @override
  String? get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GuildCopyWith<_$_Guild> get copyWith =>
      throw _privateConstructorUsedError;
}
