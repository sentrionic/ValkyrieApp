// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditMessageStateTearOff {
  const _$EditMessageStateTearOff();

  _EditMessageState call(
      {required MessageText text,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<MessageFailure, Unit>>
          saveFailureOrSuccessOption}) {
    return _EditMessageState(
      text: text,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $EditMessageState = _$EditMessageStateTearOff();

/// @nodoc
mixin _$EditMessageState {
  MessageText get text => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<MessageFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditMessageStateCopyWith<EditMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditMessageStateCopyWith<$Res> {
  factory $EditMessageStateCopyWith(
          EditMessageState value, $Res Function(EditMessageState) then) =
      _$EditMessageStateCopyWithImpl<$Res>;
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$EditMessageStateCopyWithImpl<$Res>
    implements $EditMessageStateCopyWith<$Res> {
  _$EditMessageStateCopyWithImpl(this._value, this._then);

  final EditMessageState _value;
  // ignore: unused_field
  final $Res Function(EditMessageState) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? saveFailureOrSuccessOption = freezed,
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
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$EditMessageStateCopyWith<$Res>
    implements $EditMessageStateCopyWith<$Res> {
  factory _$EditMessageStateCopyWith(
          _EditMessageState value, $Res Function(_EditMessageState) then) =
      __$EditMessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$EditMessageStateCopyWithImpl<$Res>
    extends _$EditMessageStateCopyWithImpl<$Res>
    implements _$EditMessageStateCopyWith<$Res> {
  __$EditMessageStateCopyWithImpl(
      _EditMessageState _value, $Res Function(_EditMessageState) _then)
      : super(_value, (v) => _then(v as _EditMessageState));

  @override
  _EditMessageState get _value => super._value as _EditMessageState;

  @override
  $Res call({
    Object? text = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_EditMessageState(
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
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_EditMessageState implements _EditMessageState {
  const _$_EditMessageState(
      {required this.text,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.saveFailureOrSuccessOption});

  @override
  final MessageText text;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'EditMessageState(text: $text, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditMessageState &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$EditMessageStateCopyWith<_EditMessageState> get copyWith =>
      __$EditMessageStateCopyWithImpl<_EditMessageState>(this, _$identity);
}

abstract class _EditMessageState implements EditMessageState {
  const factory _EditMessageState(
      {required MessageText text,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<MessageFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_EditMessageState;

  @override
  MessageText get text => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<MessageFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditMessageStateCopyWith<_EditMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
