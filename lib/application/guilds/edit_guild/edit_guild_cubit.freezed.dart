// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_guild_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_EditGuildStateCopyWith<$Res>
    implements $EditGuildStateCopyWith<$Res> {
  factory _$$_EditGuildStateCopyWith(
          _$_EditGuildState value, $Res Function(_$_EditGuildState) then) =
      __$$_EditGuildStateCopyWithImpl<$Res>;
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
class __$$_EditGuildStateCopyWithImpl<$Res>
    extends _$EditGuildStateCopyWithImpl<$Res>
    implements _$$_EditGuildStateCopyWith<$Res> {
  __$$_EditGuildStateCopyWithImpl(
      _$_EditGuildState _value, $Res Function(_$_EditGuildState) _then)
      : super(_value, (v) => _then(v as _$_EditGuildState));

  @override
  _$_EditGuildState get _value => super._value as _$_EditGuildState;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? iconUrl = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? guildFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_EditGuildState(
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
  @override
  @JsonKey()
  final File? icon;
  @override
  @JsonKey()
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
        (other.runtimeType == runtimeType &&
            other is _$_EditGuildState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.guildFailureOrSuccessOption,
                guildFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(guildFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_EditGuildStateCopyWith<_$_EditGuildState> get copyWith =>
      __$$_EditGuildStateCopyWithImpl<_$_EditGuildState>(this, _$identity);
}

abstract class _EditGuildState implements EditGuildState {
  const factory _EditGuildState(
      {required final GuildName name,
      final File? icon,
      final String? iconUrl,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<GuildFailure, Unit>>
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
  _$$_EditGuildStateCopyWith<_$_EditGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}
