// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {required String id,
      MessageText? text,
      Attachment? attachment,
      required String createdAt,
      required String updatedAt,
      required Member user}) {
    return _Message(
      id: id,
      text: text,
      attachment: attachment,
      createdAt: createdAt,
      updatedAt: updatedAt,
      user: user,
    );
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String get id => throw _privateConstructorUsedError;
  MessageText? get text => throw _privateConstructorUsedError;
  Attachment? get attachment => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  Member get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      MessageText? text,
      Attachment? attachment,
      String createdAt,
      String updatedAt,
      Member user});

  $AttachmentCopyWith<$Res>? get attachment;
  $MemberCopyWith<$Res> get user;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

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
              as MessageText?,
      attachment: attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
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
              as Member,
    ));
  }

  @override
  $AttachmentCopyWith<$Res>? get attachment {
    if (_value.attachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.attachment!, (value) {
      return _then(_value.copyWith(attachment: value));
    });
  }

  @override
  $MemberCopyWith<$Res> get user {
    return $MemberCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      MessageText? text,
      Attachment? attachment,
      String createdAt,
      String updatedAt,
      Member user});

  @override
  $AttachmentCopyWith<$Res>? get attachment;
  @override
  $MemberCopyWith<$Res> get user;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? attachment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_Message(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as MessageText?,
      attachment: attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
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
              as Member,
    ));
  }
}

/// @nodoc

class _$_Message extends _Message {
  const _$_Message(
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
  final MessageText? text;
  @override
  final Attachment? attachment;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final Member user;

  @override
  String toString() {
    return 'Message(id: $id, text: $text, attachment: $attachment, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
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
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message extends Message {
  const factory _Message(
      {required String id,
      MessageText? text,
      Attachment? attachment,
      required String createdAt,
      required String updatedAt,
      required Member user}) = _$_Message;
  const _Message._() : super._();

  @override
  String get id;
  @override
  MessageText? get text;
  @override
  Attachment? get attachment;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  Member get user;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AttachmentTearOff {
  const _$AttachmentTearOff();

  _Attachment call({String? filename, String? url, String? filetype}) {
    return _Attachment(
      filename: filename,
      url: url,
      filetype: filetype,
    );
  }
}

/// @nodoc
const $Attachment = _$AttachmentTearOff();

/// @nodoc
mixin _$Attachment {
  String? get filename => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get filetype => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res>;
  $Res call({String? filename, String? url, String? filetype});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res> implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  final Attachment _value;
  // ignore: unused_field
  final $Res Function(Attachment) _then;

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
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filetype: filetype == freezed
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AttachmentCopyWith<$Res> implements $AttachmentCopyWith<$Res> {
  factory _$AttachmentCopyWith(
          _Attachment value, $Res Function(_Attachment) then) =
      __$AttachmentCopyWithImpl<$Res>;
  @override
  $Res call({String? filename, String? url, String? filetype});
}

/// @nodoc
class __$AttachmentCopyWithImpl<$Res> extends _$AttachmentCopyWithImpl<$Res>
    implements _$AttachmentCopyWith<$Res> {
  __$AttachmentCopyWithImpl(
      _Attachment _value, $Res Function(_Attachment) _then)
      : super(_value, (v) => _then(v as _Attachment));

  @override
  _Attachment get _value => super._value as _Attachment;

  @override
  $Res call({
    Object? filename = freezed,
    Object? url = freezed,
    Object? filetype = freezed,
  }) {
    return _then(_Attachment(
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filetype: filetype == freezed
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Attachment extends _Attachment {
  const _$_Attachment({this.filename, this.url, this.filetype}) : super._();

  @override
  final String? filename;
  @override
  final String? url;
  @override
  final String? filetype;

  @override
  String toString() {
    return 'Attachment(filename: $filename, url: $url, filetype: $filetype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attachment &&
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
  _$AttachmentCopyWith<_Attachment> get copyWith =>
      __$AttachmentCopyWithImpl<_Attachment>(this, _$identity);
}

abstract class _Attachment extends Attachment {
  const factory _Attachment({String? filename, String? url, String? filetype}) =
      _$_Attachment;
  const _Attachment._() : super._();

  @override
  String? get filename;
  @override
  String? get url;
  @override
  String? get filetype;
  @override
  @JsonKey(ignore: true)
  _$AttachmentCopyWith<_Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}
