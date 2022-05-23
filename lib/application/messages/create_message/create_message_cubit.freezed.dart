// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateMessageState {
  MessageText get text => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<MessageFailure, Unit>> get messageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMessageStateCopyWith<CreateMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMessageStateCopyWith<$Res> {
  factory $CreateMessageStateCopyWith(
          CreateMessageState value, $Res Function(CreateMessageState) then) =
      _$CreateMessageStateCopyWithImpl<$Res>;
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class _$CreateMessageStateCopyWithImpl<$Res>
    implements $CreateMessageStateCopyWith<$Res> {
  _$CreateMessageStateCopyWithImpl(this._value, this._then);

  final CreateMessageState _value;
  // ignore: unused_field
  final $Res Function(CreateMessageState) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? messageFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as MessageText,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      messageFailureOrSuccessOption: messageFailureOrSuccessOption == freezed
          ? _value.messageFailureOrSuccessOption
          : messageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateMessageStateCopyWith<$Res>
    implements $CreateMessageStateCopyWith<$Res> {
  factory _$$_CreateMessageStateCopyWith(_$_CreateMessageState value,
          $Res Function(_$_CreateMessageState) then) =
      __$$_CreateMessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateMessageStateCopyWithImpl<$Res>
    extends _$CreateMessageStateCopyWithImpl<$Res>
    implements _$$_CreateMessageStateCopyWith<$Res> {
  __$$_CreateMessageStateCopyWithImpl(
      _$_CreateMessageState _value, $Res Function(_$_CreateMessageState) _then)
      : super(_value, (v) => _then(v as _$_CreateMessageState));

  @override
  _$_CreateMessageState get _value => super._value as _$_CreateMessageState;

  @override
  $Res call({
    Object? text = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? messageFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_CreateMessageState(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as MessageText,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      messageFailureOrSuccessOption: messageFailureOrSuccessOption == freezed
          ? _value.messageFailureOrSuccessOption
          : messageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateMessageState implements _CreateMessageState {
  const _$_CreateMessageState(
      {required this.text,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.messageFailureOrSuccessOption});

  @override
  final MessageText text;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateMessageState(text: $text, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, messageFailureOrSuccessOption: $messageFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateMessageState &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.messageFailureOrSuccessOption,
                messageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(messageFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_CreateMessageStateCopyWith<_$_CreateMessageState> get copyWith =>
      __$$_CreateMessageStateCopyWithImpl<_$_CreateMessageState>(
          this, _$identity);
}

abstract class _CreateMessageState implements CreateMessageState {
  const factory _CreateMessageState(
      {required final MessageText text,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<MessageFailure, Unit>>
          messageFailureOrSuccessOption}) = _$_CreateMessageState;

  @override
  MessageText get text => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<MessageFailure, Unit>> get messageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMessageStateCopyWith<_$_CreateMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
