// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_friend_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddFriendStateTearOff {
  const _$AddFriendStateTearOff();

  _AddFriendState call(
      {required UID uid,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<FriendFailure, Unit>> failureOrSuccessOption}) {
    return _AddFriendState(
      uid: uid,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $AddFriendState = _$AddFriendStateTearOff();

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
      _$AddFriendStateCopyWithImpl<$Res>;
  $Res call(
      {UID uid,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FriendFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$AddFriendStateCopyWithImpl<$Res>
    implements $AddFriendStateCopyWith<$Res> {
  _$AddFriendStateCopyWithImpl(this._value, this._then);

  final AddFriendState _value;
  // ignore: unused_field
  final $Res Function(AddFriendState) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UID,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FriendFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AddFriendStateCopyWith<$Res>
    implements $AddFriendStateCopyWith<$Res> {
  factory _$AddFriendStateCopyWith(
          _AddFriendState value, $Res Function(_AddFriendState) then) =
      __$AddFriendStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UID uid,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<FriendFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$AddFriendStateCopyWithImpl<$Res>
    extends _$AddFriendStateCopyWithImpl<$Res>
    implements _$AddFriendStateCopyWith<$Res> {
  __$AddFriendStateCopyWithImpl(
      _AddFriendState _value, $Res Function(_AddFriendState) _then)
      : super(_value, (v) => _then(v as _AddFriendState));

  @override
  _AddFriendState get _value => super._value as _AddFriendState;

  @override
  $Res call({
    Object? uid = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_AddFriendState(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UID,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
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
        (other is _AddFriendState &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AddFriendStateCopyWith<_AddFriendState> get copyWith =>
      __$AddFriendStateCopyWithImpl<_AddFriendState>(this, _$identity);
}

abstract class _AddFriendState implements AddFriendState {
  const factory _AddFriendState(
      {required UID uid,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<FriendFailure, Unit>>
          failureOrSuccessOption}) = _$_AddFriendState;

  @override
  UID get uid => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<FriendFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddFriendStateCopyWith<_AddFriendState> get copyWith =>
      throw _privateConstructorUsedError;
}
