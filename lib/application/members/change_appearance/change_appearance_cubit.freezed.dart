// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$ChangeAppearanceStateCopyWithImpl<$Res>;
  $Res call(
      {Nickname? nickname,
      HexColor? hexColor,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<MemberFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$ChangeAppearanceStateCopyWithImpl<$Res>
    implements $ChangeAppearanceStateCopyWith<$Res> {
  _$ChangeAppearanceStateCopyWithImpl(this._value, this._then);

  final ChangeAppearanceState _value;
  // ignore: unused_field
  final $Res Function(ChangeAppearanceState) _then;

  @override
  $Res call({
    Object? nickname = freezed,
    Object? hexColor = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname?,
      hexColor: hexColor == freezed
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as HexColor?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MemberFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChangeAppearanceStateCopyWith<$Res>
    implements $ChangeAppearanceStateCopyWith<$Res> {
  factory _$$_ChangeAppearanceStateCopyWith(_$_ChangeAppearanceState value,
          $Res Function(_$_ChangeAppearanceState) then) =
      __$$_ChangeAppearanceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Nickname? nickname,
      HexColor? hexColor,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<MemberFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_ChangeAppearanceStateCopyWithImpl<$Res>
    extends _$ChangeAppearanceStateCopyWithImpl<$Res>
    implements _$$_ChangeAppearanceStateCopyWith<$Res> {
  __$$_ChangeAppearanceStateCopyWithImpl(_$_ChangeAppearanceState _value,
      $Res Function(_$_ChangeAppearanceState) _then)
      : super(_value, (v) => _then(v as _$_ChangeAppearanceState));

  @override
  _$_ChangeAppearanceState get _value =>
      super._value as _$_ChangeAppearanceState;

  @override
  $Res call({
    Object? nickname = freezed,
    Object? hexColor = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ChangeAppearanceState(
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname?,
      hexColor: hexColor == freezed
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as HexColor?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
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
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.hexColor, hexColor) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(hexColor),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
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
  Nickname? get nickname => throw _privateConstructorUsedError;
  @override
  HexColor? get hexColor => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<MemberFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeAppearanceStateCopyWith<_$_ChangeAppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
