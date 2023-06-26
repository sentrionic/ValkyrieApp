// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
mixin _$MessageDto {
  String get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  AttachmentDto? get attachment => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  MemberDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res, MessageDto>;
  @useResult
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
class _$MessageDtoCopyWithImpl<$Res, $Val extends MessageDto>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = freezed,
    Object? attachment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as AttachmentDto?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MemberDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentDtoCopyWith<$Res>? get attachment {
    if (_value.attachment == null) {
      return null;
    }

    return $AttachmentDtoCopyWith<$Res>(_value.attachment!, (value) {
      return _then(_value.copyWith(attachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberDtoCopyWith<$Res> get user {
    return $MemberDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
  @useResult
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
class __$$_MessageDtoCopyWithImpl<$Res>
    extends _$MessageDtoCopyWithImpl<$Res, _$_MessageDto>
    implements _$$_MessageDtoCopyWith<$Res> {
  __$$_MessageDtoCopyWithImpl(
      _$_MessageDto _value, $Res Function(_$_MessageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = freezed,
    Object? attachment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
  }) {
    return _then(_$_MessageDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as AttachmentDto?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MemberDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageDto extends _MessageDto {
  const _$_MessageDto(
      {required this.id,
      this.text,
      this.attachment,
      required this.createdAt,
      required this.updatedAt,
      required this.user})
      : super._();

  factory _$_MessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageDtoFromJson(json);

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, attachment, createdAt, updatedAt, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      __$$_MessageDtoCopyWithImpl<_$_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageDtoToJson(
      this,
    );
  }
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

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$_MessageDto.fromJson;

  @override
  String get id;
  @override
  String? get text;
  @override
  AttachmentDto? get attachment;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  MemberDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachmentDto _$AttachmentDtoFromJson(Map<String, dynamic> json) {
  return _AttachmentDto.fromJson(json);
}

/// @nodoc
mixin _$AttachmentDto {
  String get filename => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get filetype => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentDtoCopyWith<AttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentDtoCopyWith<$Res> {
  factory $AttachmentDtoCopyWith(
          AttachmentDto value, $Res Function(AttachmentDto) then) =
      _$AttachmentDtoCopyWithImpl<$Res, AttachmentDto>;
  @useResult
  $Res call({String filename, String url, String filetype});
}

/// @nodoc
class _$AttachmentDtoCopyWithImpl<$Res, $Val extends AttachmentDto>
    implements $AttachmentDtoCopyWith<$Res> {
  _$AttachmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? url = null,
    Object? filetype = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filetype: null == filetype
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentDtoCopyWith<$Res>
    implements $AttachmentDtoCopyWith<$Res> {
  factory _$$_AttachmentDtoCopyWith(
          _$_AttachmentDto value, $Res Function(_$_AttachmentDto) then) =
      __$$_AttachmentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename, String url, String filetype});
}

/// @nodoc
class __$$_AttachmentDtoCopyWithImpl<$Res>
    extends _$AttachmentDtoCopyWithImpl<$Res, _$_AttachmentDto>
    implements _$$_AttachmentDtoCopyWith<$Res> {
  __$$_AttachmentDtoCopyWithImpl(
      _$_AttachmentDto _value, $Res Function(_$_AttachmentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? url = null,
    Object? filetype = null,
  }) {
    return _then(_$_AttachmentDto(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filetype: null == filetype
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachmentDto extends _AttachmentDto {
  const _$_AttachmentDto(
      {required this.filename, required this.url, required this.filetype})
      : super._();

  factory _$_AttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentDtoFromJson(json);

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
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filetype, filetype) ||
                other.filetype == filetype));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filename, url, filetype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentDtoCopyWith<_$_AttachmentDto> get copyWith =>
      __$$_AttachmentDtoCopyWithImpl<_$_AttachmentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentDtoToJson(
      this,
    );
  }
}

abstract class _AttachmentDto extends AttachmentDto {
  const factory _AttachmentDto(
      {required final String filename,
      required final String url,
      required final String filetype}) = _$_AttachmentDto;
  const _AttachmentDto._() : super._();

  factory _AttachmentDto.fromJson(Map<String, dynamic> json) =
      _$_AttachmentDto.fromJson;

  @override
  String get filename;
  @override
  String get url;
  @override
  String get filetype;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentDtoCopyWith<_$_AttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
