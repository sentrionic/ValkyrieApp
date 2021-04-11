// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'guild_appearance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GuildAppearanceDtoTearOff {
  const _$GuildAppearanceDtoTearOff();

  _GuildAppearanceDto call({String? nickname, String? color}) {
    return _GuildAppearanceDto(
      nickname: nickname,
      color: color,
    );
  }
}

/// @nodoc
const $GuildAppearanceDto = _$GuildAppearanceDtoTearOff();

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
abstract class _$GuildAppearanceDtoCopyWith<$Res>
    implements $GuildAppearanceDtoCopyWith<$Res> {
  factory _$GuildAppearanceDtoCopyWith(
          _GuildAppearanceDto value, $Res Function(_GuildAppearanceDto) then) =
      __$GuildAppearanceDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? nickname, String? color});
}

/// @nodoc
class __$GuildAppearanceDtoCopyWithImpl<$Res>
    extends _$GuildAppearanceDtoCopyWithImpl<$Res>
    implements _$GuildAppearanceDtoCopyWith<$Res> {
  __$GuildAppearanceDtoCopyWithImpl(
      _GuildAppearanceDto _value, $Res Function(_GuildAppearanceDto) _then)
      : super(_value, (v) => _then(v as _GuildAppearanceDto));

  @override
  _GuildAppearanceDto get _value => super._value as _GuildAppearanceDto;

  @override
  $Res call({
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_GuildAppearanceDto(
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
        (other is _GuildAppearanceDto &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$GuildAppearanceDtoCopyWith<_GuildAppearanceDto> get copyWith =>
      __$GuildAppearanceDtoCopyWithImpl<_GuildAppearanceDto>(this, _$identity);
}

abstract class _GuildAppearanceDto extends GuildAppearanceDto {
  const factory _GuildAppearanceDto({String? nickname, String? color}) =
      _$_GuildAppearanceDto;
  const _GuildAppearanceDto._() : super._();

  @override
  String? get nickname => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GuildAppearanceDtoCopyWith<_GuildAppearanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
