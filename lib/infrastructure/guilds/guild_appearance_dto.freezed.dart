// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guild_appearance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuildAppearanceDto {
  String? get nickname => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuildAppearanceDtoCopyWith<GuildAppearanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildAppearanceDtoCopyWith<$Res> {
  factory $GuildAppearanceDtoCopyWith(
          GuildAppearanceDto value, $Res Function(GuildAppearanceDto) then) =
      _$GuildAppearanceDtoCopyWithImpl<$Res>;
  $Res call({String? nickname, String? color});
}

/// @nodoc
class _$GuildAppearanceDtoCopyWithImpl<$Res>
    implements $GuildAppearanceDtoCopyWith<$Res> {
  _$GuildAppearanceDtoCopyWithImpl(this._value, this._then);

  final GuildAppearanceDto _value;
  // ignore: unused_field
  final $Res Function(GuildAppearanceDto) _then;

  @override
  $Res call({
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GuildAppearanceDtoCopyWith<$Res>
    implements $GuildAppearanceDtoCopyWith<$Res> {
  factory _$$_GuildAppearanceDtoCopyWith(_$_GuildAppearanceDto value,
          $Res Function(_$_GuildAppearanceDto) then) =
      __$$_GuildAppearanceDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? nickname, String? color});
}

/// @nodoc
class __$$_GuildAppearanceDtoCopyWithImpl<$Res>
    extends _$GuildAppearanceDtoCopyWithImpl<$Res>
    implements _$$_GuildAppearanceDtoCopyWith<$Res> {
  __$$_GuildAppearanceDtoCopyWithImpl(
      _$_GuildAppearanceDto _value, $Res Function(_$_GuildAppearanceDto) _then)
      : super(_value, (v) => _then(v as _$_GuildAppearanceDto));

  @override
  _$_GuildAppearanceDto get _value => super._value as _$_GuildAppearanceDto;

  @override
  $Res call({
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_GuildAppearanceDto(
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GuildAppearanceDto extends _GuildAppearanceDto {
  const _$_GuildAppearanceDto({this.nickname, this.color}) : super._();

  @override
  final String? nickname;
  @override
  final String? color;

  @override
  String toString() {
    return 'GuildAppearanceDto(nickname: $nickname, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuildAppearanceDto &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_GuildAppearanceDtoCopyWith<_$_GuildAppearanceDto> get copyWith =>
      __$$_GuildAppearanceDtoCopyWithImpl<_$_GuildAppearanceDto>(
          this, _$identity);
}

abstract class _GuildAppearanceDto extends GuildAppearanceDto {
  const factory _GuildAppearanceDto(
      {final String? nickname, final String? color}) = _$_GuildAppearanceDto;
  const _GuildAppearanceDto._() : super._();

  @override
  String? get nickname => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GuildAppearanceDtoCopyWith<_$_GuildAppearanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
