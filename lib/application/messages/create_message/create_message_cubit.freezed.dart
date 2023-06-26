// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CreateMessageStateCopyWithImpl<$Res, CreateMessageState>;
  @useResult
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class _$CreateMessageStateCopyWithImpl<$Res, $Val extends CreateMessageState>
    implements $CreateMessageStateCopyWith<$Res> {
  _$CreateMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? messageFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as MessageText,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      messageFailureOrSuccessOption: null == messageFailureOrSuccessOption
          ? _value.messageFailureOrSuccessOption
          : messageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateMessageStateCopyWith<$Res>
    implements $CreateMessageStateCopyWith<$Res> {
  factory _$$_CreateMessageStateCopyWith(_$_CreateMessageState value,
          $Res Function(_$_CreateMessageState) then) =
      __$$_CreateMessageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateMessageStateCopyWithImpl<$Res>
    extends _$CreateMessageStateCopyWithImpl<$Res, _$_CreateMessageState>
    implements _$$_CreateMessageStateCopyWith<$Res> {
  __$$_CreateMessageStateCopyWithImpl(
      _$_CreateMessageState _value, $Res Function(_$_CreateMessageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? messageFailureOrSuccessOption = null,
  }) {
    return _then(_$_CreateMessageState(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as MessageText,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      messageFailureOrSuccessOption: null == messageFailureOrSuccessOption
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
            (identical(other.text, text) || other.text == text) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.messageFailureOrSuccessOption,
                    messageFailureOrSuccessOption) ||
                other.messageFailureOrSuccessOption ==
                    messageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, showErrorMessages,
      isSubmitting, messageFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  MessageText get text;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<MessageFailure, Unit>> get messageFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMessageStateCopyWith<_$_CreateMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
