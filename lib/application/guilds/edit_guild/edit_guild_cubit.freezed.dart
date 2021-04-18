// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_guild_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditGuildStateTearOff {
  const _$EditGuildStateTearOff();

  _EditGuildState call(
      {required GuildName name,
      File? icon = null,
      String? iconUrl = null,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<GuildFailure, Unit>>
          guildFailureOrSuccessOption}) {
    return _EditGuildState(
      name: name,
      icon: icon,
      iconUrl: iconUrl,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      guildFailureOrSuccessOption: guildFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $EditGuildState = _$EditGuildStateTearOff();

/// @nodoc
mixin _$EditGuildState {
  GuildName get name => throw _privateConstructorUsedError;
  File? get icon => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<GuildFailure, Unit>> get guildFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditGuildStateCopyWith<EditGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditGuildStateCopyWith<$Res> {
  factory $EditGuildStateCopyWith(
          EditGuildState value, $Res Function(EditGuildState) then) =
      _$EditGuildStateCopyWithImpl<$Res>;
  $Res call(
      {GuildName name,
      File? icon,
      String? iconUrl,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Unit>> guildFailureOrSuccessOption});
}

/// @nodoc
class _$EditGuildStateCopyWithImpl<$Res>
    implements $EditGuildStateCopyWith<$Res> {
  _$EditGuildStateCopyWithImpl(this._value, this._then);

  final EditGuildState _value;
  // ignore: unused_field
  final $Res Function(EditGuildState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? iconUrl = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? guildFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GuildName,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as File?,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      guildFailureOrSuccessOption: guildFailureOrSuccessOption == freezed
          ? _value.guildFailureOrSuccessOption
          : guildFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GuildFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$EditGuildStateCopyWith<$Res>
    implements $EditGuildStateCopyWith<$Res> {
  factory _$EditGuildStateCopyWith(
          _EditGuildState value, $Res Function(_EditGuildState) then) =
      __$EditGuildStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {GuildName name,
      File? icon,
      String? iconUrl,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Unit>> guildFailureOrSuccessOption});
}

/// @nodoc
class __$EditGuildStateCopyWithImpl<$Res>
    extends _$EditGuildStateCopyWithImpl<$Res>
    implements _$EditGuildStateCopyWith<$Res> {
  __$EditGuildStateCopyWithImpl(
      _EditGuildState _value, $Res Function(_EditGuildState) _then)
      : super(_value, (v) => _then(v as _EditGuildState));

  @override
  _EditGuildState get _value => super._value as _EditGuildState;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? iconUrl = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? guildFailureOrSuccessOption = freezed,
  }) {
    return _then(_EditGuildState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GuildName,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as File?,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      guildFailureOrSuccessOption: guildFailureOrSuccessOption == freezed
          ? _value.guildFailureOrSuccessOption
          : guildFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GuildFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_EditGuildState implements _EditGuildState {
  const _$_EditGuildState(
      {required this.name,
      this.icon = null,
      this.iconUrl = null,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.guildFailureOrSuccessOption});

  @override
  final GuildName name;
  @JsonKey(defaultValue: null)
  @override
  final File? icon;
  @JsonKey(defaultValue: null)
  @override
  final String? iconUrl;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<GuildFailure, Unit>> guildFailureOrSuccessOption;

  @override
  String toString() {
    return 'EditGuildState(name: $name, icon: $icon, iconUrl: $iconUrl, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, guildFailureOrSuccessOption: $guildFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditGuildState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.guildFailureOrSuccessOption,
                    guildFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.guildFailureOrSuccessOption,
                    guildFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(guildFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$EditGuildStateCopyWith<_EditGuildState> get copyWith =>
      __$EditGuildStateCopyWithImpl<_EditGuildState>(this, _$identity);
}

abstract class _EditGuildState implements EditGuildState {
  const factory _EditGuildState(
      {required GuildName name,
      File? icon,
      String? iconUrl,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<GuildFailure, Unit>>
          guildFailureOrSuccessOption}) = _$_EditGuildState;

  @override
  GuildName get name => throw _privateConstructorUsedError;
  @override
  File? get icon => throw _privateConstructorUsedError;
  @override
  String? get iconUrl => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<GuildFailure, Unit>> get guildFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditGuildStateCopyWith<_EditGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}
