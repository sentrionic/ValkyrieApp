// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dm_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DMUserDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isFriend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DMUserDtoCopyWith<DMUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMUserDtoCopyWith<$Res> {
  factory $DMUserDtoCopyWith(DMUserDto value, $Res Function(DMUserDto) then) =
      _$DMUserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String username, String image, bool isOnline, bool isFriend});
}

/// @nodoc
class _$DMUserDtoCopyWithImpl<$Res> implements $DMUserDtoCopyWith<$Res> {
  _$DMUserDtoCopyWithImpl(this._value, this._then);

  final DMUserDto _value;
  // ignore: unused_field
  final $Res Function(DMUserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
    Object? isFriend = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_DMUserDtoCopyWith<$Res> implements $DMUserDtoCopyWith<$Res> {
  factory _$$_DMUserDtoCopyWith(
          _$_DMUserDto value, $Res Function(_$_DMUserDto) then) =
      __$$_DMUserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String username, String image, bool isOnline, bool isFriend});
}

/// @nodoc
class __$$_DMUserDtoCopyWithImpl<$Res> extends _$DMUserDtoCopyWithImpl<$Res>
    implements _$$_DMUserDtoCopyWith<$Res> {
  __$$_DMUserDtoCopyWithImpl(
      _$_DMUserDto _value, $Res Function(_$_DMUserDto) _then)
      : super(_value, (v) => _then(v as _$_DMUserDto));

  @override
  _$_DMUserDto get _value => super._value as _$_DMUserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? isOnline = freezed,
    Object? isFriend = freezed,
  }) {
    return _then(_$_DMUserDto(
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
    ));
  }
}

/// @nodoc

class _$_DMUserDto extends _DMUserDto {
  const _$_DMUserDto(
      {required this.id,
      required this.username,
      required this.image,
      required this.isOnline,
      required this.isFriend})
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
  String toString() {
    return 'DMUserDto(id: $id, username: $username, image: $image, isOnline: $isOnline, isFriend: $isFriend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DMUserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.isFriend, isFriend));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(isFriend));

  @JsonKey(ignore: true)
  @override
  _$$_DMUserDtoCopyWith<_$_DMUserDto> get copyWith =>
      __$$_DMUserDtoCopyWithImpl<_$_DMUserDto>(this, _$identity);
}

abstract class _DMUserDto extends DMUserDto {
  const factory _DMUserDto(
      {required final String id,
      required final String username,
      required final String image,
      required final bool isOnline,
      required final bool isFriend}) = _$_DMUserDto;
  const _DMUserDto._() : super._();

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
  @JsonKey(ignore: true)
  _$$_DMUserDtoCopyWith<_$_DMUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
