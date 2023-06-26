// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banned_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannedMember {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannedMemberCopyWith<BannedMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannedMemberCopyWith<$Res> {
  factory $BannedMemberCopyWith(
          BannedMember value, $Res Function(BannedMember) then) =
      _$BannedMemberCopyWithImpl<$Res, BannedMember>;
  @useResult
  $Res call({String id, String username, String image});
}

/// @nodoc
class _$BannedMemberCopyWithImpl<$Res, $Val extends BannedMember>
    implements $BannedMemberCopyWith<$Res> {
  _$BannedMemberCopyWithImpl(this._value, this._then);

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
abstract class _$$_BannedMemberCopyWith<$Res>
    implements $BannedMemberCopyWith<$Res> {
  factory _$$_BannedMemberCopyWith(
          _$_BannedMember value, $Res Function(_$_BannedMember) then) =
      __$$_BannedMemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, String image});
}

/// @nodoc
class __$$_BannedMemberCopyWithImpl<$Res>
    extends _$BannedMemberCopyWithImpl<$Res, _$_BannedMember>
    implements _$$_BannedMemberCopyWith<$Res> {
  __$$_BannedMemberCopyWithImpl(
      _$_BannedMember _value, $Res Function(_$_BannedMember) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = null,
  }) {
    return _then(_$_BannedMember(
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

class _$_BannedMember extends _BannedMember {
  const _$_BannedMember(
      {required this.id, required this.username, required this.image})
      : super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;

  @override
  String toString() {
    return 'BannedMember(id: $id, username: $username, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannedMember &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannedMemberCopyWith<_$_BannedMember> get copyWith =>
      __$$_BannedMemberCopyWithImpl<_$_BannedMember>(this, _$identity);
}

abstract class _BannedMember extends BannedMember {
  const factory _BannedMember(
      {required final String id,
      required final String username,
      required final String image}) = _$_BannedMember;
  const _BannedMember._() : super._();

  @override
  String get id;
  @override
  String get username;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_BannedMemberCopyWith<_$_BannedMember> get copyWith =>
      throw _privateConstructorUsedError;
}
