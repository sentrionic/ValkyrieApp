// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberDto _$MemberDtoFromJson(Map<String, dynamic> json) {
  return _MemberDto.fromJson(json);
}

/// @nodoc
mixin _$MemberDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isFriend => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDtoCopyWith<MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDtoCopyWith<$Res> {
  factory $MemberDtoCopyWith(MemberDto value, $Res Function(MemberDto) then) =
      _$MemberDtoCopyWithImpl<$Res, MemberDto>;
  @useResult
  $Res call(
      {String id,
      String username,
      String image,
      bool isOnline,
      bool isFriend,
      String? nickname,
      String? color});
}

/// @nodoc
class _$MemberDtoCopyWithImpl<$Res, $Val extends MemberDto>
    implements $MemberDtoCopyWith<$Res> {
  _$MemberDtoCopyWithImpl(this._value, this._then);

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
    Object? isOnline = null,
    Object? isFriend = null,
    Object? nickname = freezed,
    Object? color = freezed,
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
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: null == isFriend
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_MemberDtoCopyWith<$Res> implements $MemberDtoCopyWith<$Res> {
  factory _$$_MemberDtoCopyWith(
          _$_MemberDto value, $Res Function(_$_MemberDto) then) =
      __$$_MemberDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String image,
      bool isOnline,
      bool isFriend,
      String? nickname,
      String? color});
}

/// @nodoc
class __$$_MemberDtoCopyWithImpl<$Res>
    extends _$MemberDtoCopyWithImpl<$Res, _$_MemberDto>
    implements _$$_MemberDtoCopyWith<$Res> {
  __$$_MemberDtoCopyWithImpl(
      _$_MemberDto _value, $Res Function(_$_MemberDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
    Object? isOnline = null,
    Object? isFriend = null,
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_MemberDto(
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
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: null == isFriend
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_MemberDto extends _MemberDto {
  const _$_MemberDto(
      {required this.id,
      required this.username,
      required this.image,
      required this.isOnline,
      required this.isFriend,
      this.nickname,
      this.color})
      : super._();

  factory _$_MemberDto.fromJson(Map<String, dynamic> json) =>
      _$$_MemberDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;
  @override
  final bool isOnline;
  @override
  final bool isFriend;
  @override
  final String? nickname;
  @override
  final String? color;

  @override
  String toString() {
    return 'MemberDto(id: $id, username: $username, image: $image, isOnline: $isOnline, isFriend: $isFriend, nickname: $nickname, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isFriend, isFriend) ||
                other.isFriend == isFriend) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, image, isOnline, isFriend, nickname, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberDtoCopyWith<_$_MemberDto> get copyWith =>
      __$$_MemberDtoCopyWithImpl<_$_MemberDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberDtoToJson(
      this,
    );
  }
}

abstract class _MemberDto extends MemberDto {
  const factory _MemberDto(
      {required final String id,
      required final String username,
      required final String image,
      required final bool isOnline,
      required final bool isFriend,
      final String? nickname,
      final String? color}) = _$_MemberDto;
  const _MemberDto._() : super._();

  factory _MemberDto.fromJson(Map<String, dynamic> json) =
      _$_MemberDto.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get image;
  @override
  bool get isOnline;
  @override
  bool get isFriend;
  @override
  String? get nickname;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_MemberDtoCopyWith<_$_MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
