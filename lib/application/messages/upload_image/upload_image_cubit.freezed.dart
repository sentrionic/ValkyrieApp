// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$UploadImageStateCopyWithImpl<$Res, UploadImageState>;
  @useResult
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class _$UploadImageStateCopyWithImpl<$Res, $Val extends UploadImageState>
    implements $UploadImageStateCopyWith<$Res> {
  _$UploadImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? messageFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_UploadImageStateCopyWith<$Res>
    implements $UploadImageStateCopyWith<$Res> {
  factory _$$_UploadImageStateCopyWith(
          _$_UploadImageState value, $Res Function(_$_UploadImageState) then) =
      __$$_UploadImageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption});
}

/// @nodoc
class __$$_UploadImageStateCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res, _$_UploadImageState>
    implements _$$_UploadImageStateCopyWith<$Res> {
  __$$_UploadImageStateCopyWithImpl(
      _$_UploadImageState _value, $Res Function(_$_UploadImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? messageFailureOrSuccessOption = null,
  }) {
    return _then(_$_UploadImageState(
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
        (other.runtimeType == runtimeType &&
            other is _$_UploadImageState &&
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
  int get hashCode => Object.hash(runtimeType, showErrorMessages, isSubmitting,
      messageFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadImageStateCopyWith<_$_UploadImageState> get copyWith =>
      __$$_UploadImageStateCopyWithImpl<_$_UploadImageState>(this, _$identity);
}

abstract class _UploadImageState implements UploadImageState {
  const factory _UploadImageState(
      {required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<MessageFailure, Unit>>
          messageFailureOrSuccessOption}) = _$_UploadImageState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<MessageFailure, Unit>> get messageFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UploadImageStateCopyWith<_$_UploadImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
