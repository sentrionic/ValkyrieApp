// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guild_appearance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuildAppearance {
  Nickname? get nickname => throw _privateConstructorUsedError;
  HexColor? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuildAppearanceCopyWith<GuildAppearance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildAppearanceCopyWith<$Res> {
  factory $GuildAppearanceCopyWith(
          GuildAppearance value, $Res Function(GuildAppearance) then) =
      _$GuildAppearanceCopyWithImpl<$Res, GuildAppearance>;
  @useResult
  $Res call({Nickname? nickname, HexColor? color});
}

/// @nodoc
class _$GuildAppearanceCopyWithImpl<$Res, $Val extends GuildAppearance>
    implements $GuildAppearanceCopyWith<$Res> {
  _$GuildAppearanceCopyWithImpl(this._value, this._then);

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
              as Nickname?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as HexColor?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuildAppearanceCopyWith<$Res>
    implements $GuildAppearanceCopyWith<$Res> {
  factory _$$_GuildAppearanceCopyWith(
          _$_GuildAppearance value, $Res Function(_$_GuildAppearance) then) =
      __$$_GuildAppearanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Nickname? nickname, HexColor? color});
}

/// @nodoc
class __$$_GuildAppearanceCopyWithImpl<$Res>
    extends _$GuildAppearanceCopyWithImpl<$Res, _$_GuildAppearance>
    implements _$$_GuildAppearanceCopyWith<$Res> {
  __$$_GuildAppearanceCopyWithImpl(
      _$_GuildAppearance _value, $Res Function(_$_GuildAppearance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_GuildAppearance(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as HexColor?,
    ));
  }
}

/// @nodoc

class _$_GuildAppearance extends _GuildAppearance {
  const _$_GuildAppearance({this.nickname, this.color}) : super._();

  @override
  final Nickname? nickname;
  @override
  final HexColor? color;

  @override
  String toString() {
    return 'GuildAppearance(nickname: $nickname, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuildAppearance &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuildAppearanceCopyWith<_$_GuildAppearance> get copyWith =>
      __$$_GuildAppearanceCopyWithImpl<_$_GuildAppearance>(this, _$identity);
}

abstract class _GuildAppearance extends GuildAppearance {
  const factory _GuildAppearance(
      {final Nickname? nickname, final HexColor? color}) = _$_GuildAppearance;
  const _GuildAppearance._() : super._();

  @override
  Nickname? get nickname;
  @override
  HexColor? get color;
  @override
  @JsonKey(ignore: true)
  _$$_GuildAppearanceCopyWith<_$_GuildAppearance> get copyWith =>
      throw _privateConstructorUsedError;
}
