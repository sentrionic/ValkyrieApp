// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_appearance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangeAppearanceState {
  Nickname? get nickname => throw _privateConstructorUsedError;
  HexColor? get hexColor => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<MemberFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeAppearanceStateCopyWith<ChangeAppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAppearanceStateCopyWith<$Res> {
  factory $ChangeAppearanceStateCopyWith(ChangeAppearanceState value,
          $Res Function(ChangeAppearanceState) then) =
      _$ChangeAppearanceStateCopyWithImpl<$Res, ChangeAppearanceState>;
  @useResult
  $Res call(
      {Nickname? nickname,
      HexColor? hexColor,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<MemberFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$ChangeAppearanceStateCopyWithImpl<$Res,
        $Val extends ChangeAppearanceState>
    implements $ChangeAppearanceStateCopyWith<$Res> {
  _$ChangeAppearanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? hexColor = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname?,
      hexColor: freezed == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as HexColor?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MemberFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeAppearanceStateCopyWith<$Res>
    implements $ChangeAppearanceStateCopyWith<$Res> {
  factory _$$_ChangeAppearanceStateCopyWith(_$_ChangeAppearanceState value,
          $Res Function(_$_ChangeAppearanceState) then) =
      __$$_ChangeAppearanceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Nickname? nickname,
      HexColor? hexColor,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<MemberFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_ChangeAppearanceStateCopyWithImpl<$Res>
    extends _$ChangeAppearanceStateCopyWithImpl<$Res, _$_ChangeAppearanceState>
    implements _$$_ChangeAppearanceStateCopyWith<$Res> {
  __$$_ChangeAppearanceStateCopyWithImpl(_$_ChangeAppearanceState _value,
      $Res Function(_$_ChangeAppearanceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? hexColor = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_ChangeAppearanceState(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname?,
      hexColor: freezed == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as HexColor?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MemberFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ChangeAppearanceState implements _ChangeAppearanceState {
  const _$_ChangeAppearanceState(
      {this.nickname = null,
      this.hexColor = null,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  @JsonKey()
  final Nickname? nickname;
  @override
  @JsonKey()
  final HexColor? hexColor;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<MemberFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChangeAppearanceState(nickname: $nickname, hexColor: $hexColor, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAppearanceState &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.hexColor, hexColor) ||
                other.hexColor == hexColor) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, hexColor,
      showErrorMessages, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAppearanceStateCopyWith<_$_ChangeAppearanceState> get copyWith =>
      __$$_ChangeAppearanceStateCopyWithImpl<_$_ChangeAppearanceState>(
          this, _$identity);
}

abstract class _ChangeAppearanceState implements ChangeAppearanceState {
  const factory _ChangeAppearanceState(
      {final Nickname? nickname,
      final HexColor? hexColor,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final Option<Either<MemberFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ChangeAppearanceState;

  @override
  Nickname? get nickname;
  @override
  HexColor? get hexColor;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  Option<Either<MemberFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeAppearanceStateCopyWith<_$_ChangeAppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
