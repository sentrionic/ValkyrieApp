// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemberDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isFriend => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberDtoCopyWith<MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDtoCopyWith<$Res> {
  factory $MemberDtoCopyWith(MemberDto value, $Res Function(MemberDto) then) =
      _$MemberDtoCopyWithImpl<$Res>;
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
class _$MemberDtoCopyWithImpl<$Res> implements $MemberDtoCopyWith<$Res> {
  _$MemberDtoCopyWithImpl(this._value, this._then);

  final MemberDto _value;
  // ignore: unused_field
  final $Res Function(MemberDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
    Object? isFriend = freezed,
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: isFriend == freezed
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_MemberDtoCopyWith<$Res> implements $MemberDtoCopyWith<$Res> {
  factory _$$_MemberDtoCopyWith(
          _$_MemberDto value, $Res Function(_$_MemberDto) then) =
      __$$_MemberDtoCopyWithImpl<$Res>;
  @override
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
class __$$_MemberDtoCopyWithImpl<$Res> extends _$MemberDtoCopyWithImpl<$Res>
    implements _$$_MemberDtoCopyWith<$Res> {
  __$$_MemberDtoCopyWithImpl(
      _$_MemberDto _value, $Res Function(_$_MemberDto) _then)
      : super(_value, (v) => _then(v as _$_MemberDto));

  @override
  _$_MemberDto get _value => super._value as _$_MemberDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
    Object? isFriend = freezed,
    Object? nickname = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_MemberDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: isFriend == freezed
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool,
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.isFriend, isFriend) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(isFriend),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_MemberDtoCopyWith<_$_MemberDto> get copyWith =>
      __$$_MemberDtoCopyWithImpl<_$_MemberDto>(this, _$identity);
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

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isOnline => throw _privateConstructorUsedError;
  @override
  bool get isFriend => throw _privateConstructorUsedError;
  @override
  String? get nickname => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MemberDtoCopyWith<_$_MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
