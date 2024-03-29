// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_friend_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddFriendState {
  UID get uid => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<FriendFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddFriendStateCopyWith<AddFriendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFriendStateCopyWith<$Res> {
  factory $AddFriendStateCopyWith(
          AddFriendState value, $Res Function(AddFriendState) then) =
      _$AddFriendStateCopyWithImpl<$Res, AddFriendState>;
  @useResult
  $Res call(
      {UID uid,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FriendFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$AddFriendStateCopyWithImpl<$Res, $Val extends AddFriendState>
    implements $AddFriendStateCopyWith<$Res> {
  _$AddFriendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UID,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FriendFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddFriendStateCopyWith<$Res>
    implements $AddFriendStateCopyWith<$Res> {
  factory _$$_AddFriendStateCopyWith(
          _$_AddFriendState value, $Res Function(_$_AddFriendState) then) =
      __$$_AddFriendStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UID uid,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FriendFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_AddFriendStateCopyWithImpl<$Res>
    extends _$AddFriendStateCopyWithImpl<$Res, _$_AddFriendState>
    implements _$$_AddFriendStateCopyWith<$Res> {
  __$$_AddFriendStateCopyWithImpl(
      _$_AddFriendState _value, $Res Function(_$_AddFriendState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_AddFriendState(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UID,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FriendFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AddFriendState implements _AddFriendState {
  const _$_AddFriendState(
      {required this.uid,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final UID uid;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<FriendFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AddFriendState(uid: $uid, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFriendState &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, showErrorMessages,
      isSubmitting, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFriendStateCopyWith<_$_AddFriendState> get copyWith =>
      __$$_AddFriendStateCopyWithImpl<_$_AddFriendState>(this, _$identity);
}

abstract class _AddFriendState implements AddFriendState {
  const factory _AddFriendState(
      {required final UID uid,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<FriendFailure, Unit>>
          failureOrSuccessOption}) = _$_AddFriendState;

  @override
  UID get uid;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<FriendFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_AddFriendStateCopyWith<_$_AddFriendState> get copyWith =>
      throw _privateConstructorUsedError;
}
