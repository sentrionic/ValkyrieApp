// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateMessageStateTearOff {
  const _$CreateMessageStateTearOff();

  _CreateMessageStatee call(
      {required MessageText text,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<MessageFailure, Unit>>
          messageFailureOrSuccessOption}) {
    return _CreateMessageStatee(
      text: text,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      messageFailureOrSuccessOption: messageFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $CreateMessageState = _$CreateMessageStateTearOff();

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
abstract class _$CreateMessageStateeCopyWith<$Res>
    implements $CreateMessageStateCopyWith<$Res> {
  factory _$CreateMessageStateeCopyWith(_CreateMessageStatee value,
          $Res Function(_CreateMessageStatee) then) =
      __$CreateMessageStateeCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class __$CreateMessageStateeCopyWithImpl<$Res>
    extends _$CreateMessageStateCopyWithImpl<$Res>
    implements _$CreateMessageStateeCopyWith<$Res> {
  __$CreateMessageStateeCopyWithImpl(
      _CreateMessageStatee _value, $Res Function(_CreateMessageStatee) _then)
      : super(_value, (v) => _then(v as _CreateMessageStatee));

  @override
  _CreateMessageStatee get _value => super._value as _CreateMessageStatee;

  @override
  $Res call({
    Object? text = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? messageFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateMessageStatee(
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
class _$_CreateMessageStatee implements _CreateMessageStatee {
  const _$_CreateMessageStatee(
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
        (other is _CreateMessageStatee &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.messageFailureOrSuccessOption,
                    messageFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.messageFailureOrSuccessOption,
                    messageFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(messageFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$CreateMessageStateeCopyWith<_CreateMessageStatee> get copyWith =>
      __$CreateMessageStateeCopyWithImpl<_CreateMessageStatee>(
          this, _$identity);
}

abstract class _CreateMessageStatee implements CreateMessageState {
  const factory _CreateMessageStatee(
      {required MessageText text,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<MessageFailure, Unit>>
          messageFailureOrSuccessOption}) = _$_CreateMessageStatee;

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
  _$CreateMessageStateeCopyWith<_CreateMessageStatee> get copyWith =>
      throw _privateConstructorUsedError;
}
