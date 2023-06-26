// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendDto _$FriendDtoFromJson(Map<String, dynamic> json) {
  return _FriendDto.fromJson(json);
}

/// @nodoc
mixin _$FriendDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendDtoCopyWith<FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendDtoCopyWith<$Res> {
  factory $FriendDtoCopyWith(FriendDto value, $Res Function(FriendDto) then) =
      _$FriendDtoCopyWithImpl<$Res, FriendDto>;
  @useResult
  $Res call({String id, String username, String image, bool isOnline});
}

/// @nodoc
class _$FriendDtoCopyWithImpl<$Res, $Val extends FriendDto>
    implements $FriendDtoCopyWith<$Res> {
  _$FriendDtoCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendDtoCopyWith<$Res> implements $FriendDtoCopyWith<$Res> {
  factory _$$_FriendDtoCopyWith(
          _$_FriendDto value, $Res Function(_$_FriendDto) then) =
      __$$_FriendDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, String image, bool isOnline});
}

/// @nodoc
class __$$_FriendDtoCopyWithImpl<$Res>
    extends _$FriendDtoCopyWithImpl<$Res, _$_FriendDto>
    implements _$$_FriendDtoCopyWith<$Res> {
  __$$_FriendDtoCopyWithImpl(
      _$_FriendDto _value, $Res Function(_$_FriendDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
    Object? isOnline = null,
  }) {
    return _then(_$_FriendDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendDto extends _FriendDto {
  const _$_FriendDto(
      {required this.id,
      required this.username,
      required this.image,
      required this.isOnline})
      : super._();

  factory _$_FriendDto.fromJson(Map<String, dynamic> json) =>
      _$$_FriendDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;
  @override
  final bool isOnline;

  @override
  String toString() {
    return 'FriendDto(id: $id, username: $username, image: $image, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, image, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendDtoCopyWith<_$_FriendDto> get copyWith =>
      __$$_FriendDtoCopyWithImpl<_$_FriendDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendDtoToJson(
      this,
    );
  }
}

abstract class _FriendDto extends FriendDto {
  const factory _FriendDto(
      {required final String id,
      required final String username,
      required final String image,
      required final bool isOnline}) = _$_FriendDto;
  const _FriendDto._() : super._();

  factory _FriendDto.fromJson(Map<String, dynamic> json) =
      _$_FriendDto.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get image;
  @override
  bool get isOnline;
  @override
  @JsonKey(ignore: true)
  _$$_FriendDtoCopyWith<_$_FriendDto> get copyWith =>
      throw _privateConstructorUsedError;
}
