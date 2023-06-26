// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banned_member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannedMemberDto _$BannedMemberDtoFromJson(Map<String, dynamic> json) {
  return _BannedMemberDto.fromJson(json);
}

/// @nodoc
mixin _$BannedMemberDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannedMemberDtoCopyWith<BannedMemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannedMemberDtoCopyWith<$Res> {
  factory $BannedMemberDtoCopyWith(
          BannedMemberDto value, $Res Function(BannedMemberDto) then) =
      _$BannedMemberDtoCopyWithImpl<$Res, BannedMemberDto>;
  @useResult
  $Res call({String id, String username, String image});
}

/// @nodoc
class _$BannedMemberDtoCopyWithImpl<$Res, $Val extends BannedMemberDto>
    implements $BannedMemberDtoCopyWith<$Res> {
  _$BannedMemberDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannedMemberDtoCopyWith<$Res>
    implements $BannedMemberDtoCopyWith<$Res> {
  factory _$$_BannedMemberDtoCopyWith(
          _$_BannedMemberDto value, $Res Function(_$_BannedMemberDto) then) =
      __$$_BannedMemberDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, String image});
}

/// @nodoc
class __$$_BannedMemberDtoCopyWithImpl<$Res>
    extends _$BannedMemberDtoCopyWithImpl<$Res, _$_BannedMemberDto>
    implements _$$_BannedMemberDtoCopyWith<$Res> {
  __$$_BannedMemberDtoCopyWithImpl(
      _$_BannedMemberDto _value, $Res Function(_$_BannedMemberDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
  }) {
    return _then(_$_BannedMemberDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannedMemberDto extends _BannedMemberDto {
  const _$_BannedMemberDto(
      {required this.id, required this.username, required this.image})
      : super._();

  factory _$_BannedMemberDto.fromJson(Map<String, dynamic> json) =>
      _$$_BannedMemberDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;

  @override
  String toString() {
    return 'BannedMemberDto(id: $id, username: $username, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannedMemberDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannedMemberDtoCopyWith<_$_BannedMemberDto> get copyWith =>
      __$$_BannedMemberDtoCopyWithImpl<_$_BannedMemberDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannedMemberDtoToJson(
      this,
    );
  }
}

abstract class _BannedMemberDto extends BannedMemberDto {
  const factory _BannedMemberDto(
      {required final String id,
      required final String username,
      required final String image}) = _$_BannedMemberDto;
  const _BannedMemberDto._() : super._();

  factory _BannedMemberDto.fromJson(Map<String, dynamic> json) =
      _$_BannedMemberDto.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_BannedMemberDtoCopyWith<_$_BannedMemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
