// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guild_appearance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuildAppearanceDto _$GuildAppearanceDtoFromJson(Map<String, dynamic> json) {
  return _GuildAppearanceDto.fromJson(json);
}

/// @nodoc
mixin _$GuildAppearanceDto {
  String? get nickname => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuildAppearanceDtoCopyWith<GuildAppearanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildAppearanceDtoCopyWith<$Res> {
  factory $GuildAppearanceDtoCopyWith(
          GuildAppearanceDto value, $Res Function(GuildAppearanceDto) then) =
      _$GuildAppearanceDtoCopyWithImpl<$Res, GuildAppearanceDto>;
  @useResult
  $Res call({String? nickname, String? color});
}

/// @nodoc
class _$GuildAppearanceDtoCopyWithImpl<$Res, $Val extends GuildAppearanceDto>
    implements $GuildAppearanceDtoCopyWith<$Res> {
  _$GuildAppearanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuildAppearanceDtoCopyWith<$Res>
    implements $GuildAppearanceDtoCopyWith<$Res> {
  factory _$$_GuildAppearanceDtoCopyWith(_$_GuildAppearanceDto value,
          $Res Function(_$_GuildAppearanceDto) then) =
      __$$_GuildAppearanceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nickname, String? color});
}

/// @nodoc
class __$$_GuildAppearanceDtoCopyWithImpl<$Res>
    extends _$GuildAppearanceDtoCopyWithImpl<$Res, _$_GuildAppearanceDto>
    implements _$$_GuildAppearanceDtoCopyWith<$Res> {
  __$$_GuildAppearanceDtoCopyWithImpl(
      _$_GuildAppearanceDto _value, $Res Function(_$_GuildAppearanceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_GuildAppearanceDto(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuildAppearanceDto extends _GuildAppearanceDto {
  const _$_GuildAppearanceDto({this.nickname, this.color}) : super._();

  factory _$_GuildAppearanceDto.fromJson(Map<String, dynamic> json) =>
      _$$_GuildAppearanceDtoFromJson(json);

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
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuildAppearanceDtoCopyWith<_$_GuildAppearanceDto> get copyWith =>
      __$$_GuildAppearanceDtoCopyWithImpl<_$_GuildAppearanceDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuildAppearanceDtoToJson(
      this,
    );
  }
}

abstract class _GuildAppearanceDto extends GuildAppearanceDto {
  const factory _GuildAppearanceDto(
      {final String? nickname, final String? color}) = _$_GuildAppearanceDto;
  const _GuildAppearanceDto._() : super._();

  factory _GuildAppearanceDto.fromJson(Map<String, dynamic> json) =
      _$_GuildAppearanceDto.fromJson;

  @override
  String? get nickname;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_GuildAppearanceDtoCopyWith<_$_GuildAppearanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
