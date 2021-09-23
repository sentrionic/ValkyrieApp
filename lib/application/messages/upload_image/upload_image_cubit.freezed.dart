// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadImageStateTearOff {
  const _$UploadImageStateTearOff();

  _UploadImageState call(
      {required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<MessageFailure, Unit>>
          messageFailureOrSuccessOption}) {
    return _UploadImageState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      messageFailureOrSuccessOption: messageFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UploadImageState = _$UploadImageStateTearOff();

/// @nodoc
mixin _$UploadImageState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<MessageFailure, Unit>> get messageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadImageStateCopyWith<UploadImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageStateCopyWith<$Res> {
  factory $UploadImageStateCopyWith(
          UploadImageState value, $Res Function(UploadImageState) then) =
      _$UploadImageStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class _$UploadImageStateCopyWithImpl<$Res>
    implements $UploadImageStateCopyWith<$Res> {
  _$UploadImageStateCopyWithImpl(this._value, this._then);

  final UploadImageState _value;
  // ignore: unused_field
  final $Res Function(UploadImageState) _then;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? messageFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$UploadImageStateCopyWith<$Res>
    implements $UploadImageStateCopyWith<$Res> {
  factory _$UploadImageStateCopyWith(
          _UploadImageState value, $Res Function(_UploadImageState) then) =
      __$UploadImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class __$UploadImageStateCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$UploadImageStateCopyWith<$Res> {
  __$UploadImageStateCopyWithImpl(
      _UploadImageState _value, $Res Function(_UploadImageState) _then)
      : super(_value, (v) => _then(v as _UploadImageState));

  @override
  _UploadImageState get _value => super._value as _UploadImageState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? messageFailureOrSuccessOption = freezed,
  }) {
    return _then(_UploadImageState(
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

class _$_UploadImageState implements _UploadImageState {
  const _$_UploadImageState(
      {required this.showErrorMessages,
      required this.isSubmitting,
      required this.messageFailureOrSuccessOption});

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption;

  @override
  String toString() {
    return 'UploadImageState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, messageFailureOrSuccessOption: $messageFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadImageState &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(messageFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UploadImageStateCopyWith<_UploadImageState> get copyWith =>
      __$UploadImageStateCopyWithImpl<_UploadImageState>(this, _$identity);
}

abstract class _UploadImageState implements UploadImageState {
  const factory _UploadImageState(
      {required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<MessageFailure, Unit>>
          messageFailureOrSuccessOption}) = _$_UploadImageState;

  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<MessageFailure, Unit>> get messageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UploadImageStateCopyWith<_UploadImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
