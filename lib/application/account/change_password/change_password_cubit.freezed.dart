// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

  _ChangePasswordState call(
      {required Password oldPassword,
      required Password newPassword,
      required Password confirmNewPassword,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _ChangePasswordState(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get confirmNewPassword => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password oldPassword,
      Password newPassword,
      Password confirmNewPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmNewPassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword:
          oldPassword == freezed ? _value.oldPassword : oldPassword as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      confirmNewPassword: confirmNewPassword == freezed
          ? _value.confirmNewPassword
          : confirmNewPassword as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password oldPassword,
      Password newPassword,
      Password confirmNewPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmNewPassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChangePasswordState(
      oldPassword:
          oldPassword == freezed ? _value.oldPassword : oldPassword as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      confirmNewPassword: confirmNewPassword == freezed
          ? _value.confirmNewPassword
          : confirmNewPassword as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.oldPassword,
      required this.newPassword,
      required this.confirmNewPassword,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final Password oldPassword;
  @override
  final Password newPassword;
  @override
  final Password confirmNewPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChangePasswordState(oldPassword: $oldPassword, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordState &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmNewPassword, confirmNewPassword)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(confirmNewPassword) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required Password oldPassword,
      required Password newPassword,
      required Password confirmNewPassword,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_ChangePasswordState;

  @override
  Password get oldPassword => throw _privateConstructorUsedError;
  @override
  Password get newPassword => throw _privateConstructorUsedError;
  @override
  Password get confirmNewPassword => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
