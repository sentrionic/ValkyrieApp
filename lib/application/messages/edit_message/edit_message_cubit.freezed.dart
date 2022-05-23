// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_EditMessageStateCopyWith<$Res>
    implements $EditMessageStateCopyWith<$Res> {
  factory _$$_EditMessageStateCopyWith(
          _$_EditMessageState value, $Res Function(_$_EditMessageState) then) =
      __$$_EditMessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageText text,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_EditMessageStateCopyWithImpl<$Res>
    extends _$EditMessageStateCopyWithImpl<$Res>
    implements _$$_EditMessageStateCopyWith<$Res> {
  __$$_EditMessageStateCopyWithImpl(
      _$_EditMessageState _value, $Res Function(_$_EditMessageState) _then)
      : super(_value, (v) => _then(v as _$_EditMessageState));

  @override
  _$_EditMessageState get _value => super._value as _$_EditMessageState;

  @override
  $Res call({
    Object? text = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_EditMessageState(
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
        (other.runtimeType == runtimeType &&
            other is _$_EditMessageState &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_EditMessageStateCopyWith<_$_EditMessageState> get copyWith =>
      __$$_EditMessageStateCopyWithImpl<_$_EditMessageState>(this, _$identity);
}

abstract class _EditMessageState implements EditMessageState {
  const factory _EditMessageState(
      {required final MessageText text,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<MessageFailure, Unit>>
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
  _$$_EditMessageStateCopyWith<_$_EditMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
