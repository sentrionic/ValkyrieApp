// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
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
class __$$_MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, (v) => _then(v as _$_Message));

  @override
  _$_Message get _value => super._value as _$_Message;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? attachment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Message(
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
            other is _$_Message &&
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
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);
}

abstract class _Message extends Message {
  const factory _Message(
      {required final String id,
      final MessageText? text,
      final Attachment? attachment,
      required final String createdAt,
      required final String updatedAt,
      required final Member user}) = _$_Message;
  const _Message._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  MessageText? get text => throw _privateConstructorUsedError;
  @override
  Attachment? get attachment => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  Member get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_AttachmentCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$_AttachmentCopyWith(
          _$_Attachment value, $Res Function(_$_Attachment) then) =
      __$$_AttachmentCopyWithImpl<$Res>;
  @override
  $Res call({String? filename, String? url, String? filetype});
}

/// @nodoc
class __$$_AttachmentCopyWithImpl<$Res> extends _$AttachmentCopyWithImpl<$Res>
    implements _$$_AttachmentCopyWith<$Res> {
  __$$_AttachmentCopyWithImpl(
      _$_Attachment _value, $Res Function(_$_Attachment) _then)
      : super(_value, (v) => _then(v as _$_Attachment));

  @override
  _$_Attachment get _value => super._value as _$_Attachment;

  @override
  $Res call({
    Object? filename = freezed,
    Object? url = freezed,
    Object? filetype = freezed,
  }) {
    return _then(_$_Attachment(
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
            other is _$_Attachment &&
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
  _$$_AttachmentCopyWith<_$_Attachment> get copyWith =>
      __$$_AttachmentCopyWithImpl<_$_Attachment>(this, _$identity);
}

abstract class _Attachment extends Attachment {
  const factory _Attachment(
      {final String? filename,
      final String? url,
      final String? filetype}) = _$_Attachment;
  const _Attachment._() : super._();

  @override
  String? get filename => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get filetype => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentCopyWith<_$_Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}
