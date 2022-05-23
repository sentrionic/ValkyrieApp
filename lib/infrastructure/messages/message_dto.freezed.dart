// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageDto {
  String get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  AttachmentDto? get attachment => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  MemberDto get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? text,
      AttachmentDto? attachment,
      String createdAt,
      String updatedAt,
      MemberDto user});

  $AttachmentDtoCopyWith<$Res>? get attachment;
  $MemberDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res> implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  final MessageDto _value;
  // ignore: unused_field
  final $Res Function(MessageDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? attachment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as AttachmentDto?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MemberDto,
    ));
  }

  @override
  $AttachmentDtoCopyWith<$Res>? get attachment {
    if (_value.attachment == null) {
      return null;
    }

    return $AttachmentDtoCopyWith<$Res>(_value.attachment!, (value) {
      return _then(_value.copyWith(attachment: value));
    });
  }

  @override
  $MemberDtoCopyWith<$Res> get user {
    return $MemberDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessageDtoCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$$_MessageDtoCopyWith(
          _$_MessageDto value, $Res Function(_$_MessageDto) then) =
      __$$_MessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? text,
      AttachmentDto? attachment,
      String createdAt,
      String updatedAt,
      MemberDto user});

  @override
  $AttachmentDtoCopyWith<$Res>? get attachment;
  @override
  $MemberDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_MessageDtoCopyWithImpl<$Res> extends _$MessageDtoCopyWithImpl<$Res>
    implements _$$_MessageDtoCopyWith<$Res> {
  __$$_MessageDtoCopyWithImpl(
      _$_MessageDto _value, $Res Function(_$_MessageDto) _then)
      : super(_value, (v) => _then(v as _$_MessageDto));

  @override
  _$_MessageDto get _value => super._value as _$_MessageDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? attachment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_MessageDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as AttachmentDto?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MemberDto,
    ));
  }
}

/// @nodoc

class _$_MessageDto extends _MessageDto {
  const _$_MessageDto(
      {required this.id,
      this.text,
      this.attachment,
      required this.createdAt,
      required this.updatedAt,
      required this.user})
      : super._();

  @override
  final String id;
  @override
  final String? text;
  @override
  final AttachmentDto? attachment;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final MemberDto user;

  @override
  String toString() {
    return 'MessageDto(id: $id, text: $text, attachment: $attachment, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.attachment, attachment) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(attachment),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      __$$_MessageDtoCopyWithImpl<_$_MessageDto>(this, _$identity);
}

abstract class _MessageDto extends MessageDto {
  const factory _MessageDto(
      {required final String id,
      final String? text,
      final AttachmentDto? attachment,
      required final String createdAt,
      required final String updatedAt,
      required final MemberDto user}) = _$_MessageDto;
  const _MessageDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  AttachmentDto? get attachment => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  MemberDto get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttachmentDto {
  String get filename => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get filetype => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachmentDtoCopyWith<AttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentDtoCopyWith<$Res> {
  factory $AttachmentDtoCopyWith(
          AttachmentDto value, $Res Function(AttachmentDto) then) =
      _$AttachmentDtoCopyWithImpl<$Res>;
  $Res call({String filename, String url, String filetype});
}

/// @nodoc
class _$AttachmentDtoCopyWithImpl<$Res>
    implements $AttachmentDtoCopyWith<$Res> {
  _$AttachmentDtoCopyWithImpl(this._value, this._then);

  final AttachmentDto _value;
  // ignore: unused_field
  final $Res Function(AttachmentDto) _then;

  @override
  $Res call({
    Object? filename = freezed,
    Object? url = freezed,
    Object? filetype = freezed,
  }) {
    return _then(_value.copyWith(
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filetype: filetype == freezed
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AttachmentDtoCopyWith<$Res>
    implements $AttachmentDtoCopyWith<$Res> {
  factory _$$_AttachmentDtoCopyWith(
          _$_AttachmentDto value, $Res Function(_$_AttachmentDto) then) =
      __$$_AttachmentDtoCopyWithImpl<$Res>;
  @override
  $Res call({String filename, String url, String filetype});
}

/// @nodoc
class __$$_AttachmentDtoCopyWithImpl<$Res>
    extends _$AttachmentDtoCopyWithImpl<$Res>
    implements _$$_AttachmentDtoCopyWith<$Res> {
  __$$_AttachmentDtoCopyWithImpl(
      _$_AttachmentDto _value, $Res Function(_$_AttachmentDto) _then)
      : super(_value, (v) => _then(v as _$_AttachmentDto));

  @override
  _$_AttachmentDto get _value => super._value as _$_AttachmentDto;

  @override
  $Res call({
    Object? filename = freezed,
    Object? url = freezed,
    Object? filetype = freezed,
  }) {
    return _then(_$_AttachmentDto(
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filetype: filetype == freezed
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AttachmentDto extends _AttachmentDto {
  const _$_AttachmentDto(
      {required this.filename, required this.url, required this.filetype})
      : super._();

  @override
  final String filename;
  @override
  final String url;
  @override
  final String filetype;

  @override
  String toString() {
    return 'AttachmentDto(filename: $filename, url: $url, filetype: $filetype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentDto &&
            const DeepCollectionEquality().equals(other.filename, filename) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.filetype, filetype));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filename),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(filetype));

  @JsonKey(ignore: true)
  @override
  _$$_AttachmentDtoCopyWith<_$_AttachmentDto> get copyWith =>
      __$$_AttachmentDtoCopyWithImpl<_$_AttachmentDto>(this, _$identity);
}

abstract class _AttachmentDto extends AttachmentDto {
  const factory _AttachmentDto(
      {required final String filename,
      required final String url,
      required final String filetype}) = _$_AttachmentDto;
  const _AttachmentDto._() : super._();

  @override
  String get filename => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get filetype => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentDtoCopyWith<_$_AttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
