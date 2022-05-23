// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get hasNotification => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelDtoCopyWith<ChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelDtoCopyWith<$Res> {
  factory $ChannelDtoCopyWith(
          ChannelDto value, $Res Function(ChannelDto) then) =
      _$ChannelDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, bool isPublic, bool hasNotification});
}

/// @nodoc
class _$ChannelDtoCopyWithImpl<$Res> implements $ChannelDtoCopyWith<$Res> {
  _$ChannelDtoCopyWithImpl(this._value, this._then);

  final ChannelDto _value;
  // ignore: unused_field
  final $Res Function(ChannelDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isPublic = freezed,
    Object? hasNotification = freezed,
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
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotification: hasNotification == freezed
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ChannelDtoCopyWith<$Res>
    implements $ChannelDtoCopyWith<$Res> {
  factory _$$_ChannelDtoCopyWith(
          _$_ChannelDto value, $Res Function(_$_ChannelDto) then) =
      __$$_ChannelDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, bool isPublic, bool hasNotification});
}

/// @nodoc
class __$$_ChannelDtoCopyWithImpl<$Res> extends _$ChannelDtoCopyWithImpl<$Res>
    implements _$$_ChannelDtoCopyWith<$Res> {
  __$$_ChannelDtoCopyWithImpl(
      _$_ChannelDto _value, $Res Function(_$_ChannelDto) _then)
      : super(_value, (v) => _then(v as _$_ChannelDto));

  @override
  _$_ChannelDto get _value => super._value as _$_ChannelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isPublic = freezed,
    Object? hasNotification = freezed,
  }) {
    return _then(_$_ChannelDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotification: hasNotification == freezed
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChannelDto extends _ChannelDto {
  const _$_ChannelDto(
      {required this.id,
      required this.name,
      required this.isPublic,
      required this.hasNotification})
      : super._();

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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isPublic, isPublic) &&
            const DeepCollectionEquality()
                .equals(other.hasNotification, hasNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isPublic),
      const DeepCollectionEquality().hash(hasNotification));

  @JsonKey(ignore: true)
  @override
  _$$_ChannelDtoCopyWith<_$_ChannelDto> get copyWith =>
      __$$_ChannelDtoCopyWithImpl<_$_ChannelDto>(this, _$identity);
}

abstract class _ChannelDto extends ChannelDto {
  const factory _ChannelDto(
      {required final String id,
      required final String name,
      required final bool isPublic,
      required final bool hasNotification}) = _$_ChannelDto;
  const _ChannelDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  bool get hasNotification => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelDtoCopyWith<_$_ChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
