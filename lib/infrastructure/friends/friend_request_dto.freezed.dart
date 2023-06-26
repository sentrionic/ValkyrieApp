// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendRequestDto _$FriendRequestDtoFromJson(Map<String, dynamic> json) {
  return _FriendRequestDto.fromJson(json);
}

/// @nodoc
mixin _$FriendRequestDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestDtoCopyWith<FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestDtoCopyWith<$Res> {
  factory $FriendRequestDtoCopyWith(
          FriendRequestDto value, $Res Function(FriendRequestDto) then) =
      _$FriendRequestDtoCopyWithImpl<$Res, FriendRequestDto>;
  @useResult
  $Res call({String id, String username, String image, int type});
}

/// @nodoc
class _$FriendRequestDtoCopyWithImpl<$Res, $Val extends FriendRequestDto>
    implements $FriendRequestDtoCopyWith<$Res> {
  _$FriendRequestDtoCopyWithImpl(this._value, this._then);

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
    Object? type = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendRequestDtoCopyWith<$Res>
    implements $FriendRequestDtoCopyWith<$Res> {
  factory _$$_FriendRequestDtoCopyWith(
          _$_FriendRequestDto value, $Res Function(_$_FriendRequestDto) then) =
      __$$_FriendRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, String image, int type});
}

/// @nodoc
class __$$_FriendRequestDtoCopyWithImpl<$Res>
    extends _$FriendRequestDtoCopyWithImpl<$Res, _$_FriendRequestDto>
    implements _$$_FriendRequestDtoCopyWith<$Res> {
  __$$_FriendRequestDtoCopyWithImpl(
      _$_FriendRequestDto _value, $Res Function(_$_FriendRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
    Object? type = null,
  }) {
    return _then(_$_FriendRequestDto(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendRequestDto extends _FriendRequestDto {
  const _$_FriendRequestDto(
      {required this.id,
      required this.username,
      required this.image,
      required this.type})
      : super._();

  factory _$_FriendRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_FriendRequestDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;
  @override
  final int type;

  @override
  String toString() {
    return 'FriendRequestDto(id: $id, username: $username, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendRequestDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, image, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendRequestDtoCopyWith<_$_FriendRequestDto> get copyWith =>
      __$$_FriendRequestDtoCopyWithImpl<_$_FriendRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendRequestDtoToJson(
      this,
    );
  }
}

abstract class _FriendRequestDto extends FriendRequestDto {
  const factory _FriendRequestDto(
      {required final String id,
      required final String username,
      required final String image,
      required final int type}) = _$_FriendRequestDto;
  const _FriendRequestDto._() : super._();

  factory _FriendRequestDto.fromJson(Map<String, dynamic> json) =
      _$_FriendRequestDto.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get image;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$_FriendRequestDtoCopyWith<_$_FriendRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
