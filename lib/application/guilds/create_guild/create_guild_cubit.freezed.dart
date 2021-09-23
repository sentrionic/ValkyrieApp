// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_guild_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateGuildStateTearOff {
  const _$CreateGuildStateTearOff();

  _CreateGuildState call(
      {required GuildName name,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<GuildFailure, Guild>>
          guildFailureOrSuccessOption}) {
    return _CreateGuildState(
      name: name,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      guildFailureOrSuccessOption: guildFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $CreateGuildState = _$CreateGuildStateTearOff();

/// @nodoc
mixin _$CreateGuildState {
  GuildName get name => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<GuildFailure, Guild>> get guildFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGuildStateCopyWith<CreateGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGuildStateCopyWith<$Res> {
  factory $CreateGuildStateCopyWith(
          CreateGuildState value, $Res Function(CreateGuildState) then) =
      _$CreateGuildStateCopyWithImpl<$Res>;
  $Res call(
      {GuildName name,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class _$CreateGuildStateCopyWithImpl<$Res>
    implements $CreateGuildStateCopyWith<$Res> {
  _$CreateGuildStateCopyWithImpl(this._value, this._then);

  final CreateGuildState _value;
  // ignore: unused_field
  final $Res Function(CreateGuildState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? guildFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GuildName,
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
              as Option<Either<GuildFailure, Guild>>,
    ));
  }
}

/// @nodoc
abstract class _$CreateGuildStateCopyWith<$Res>
    implements $CreateGuildStateCopyWith<$Res> {
  factory _$CreateGuildStateCopyWith(
          _CreateGuildState value, $Res Function(_CreateGuildState) then) =
      __$CreateGuildStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {GuildName name,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class __$CreateGuildStateCopyWithImpl<$Res>
    extends _$CreateGuildStateCopyWithImpl<$Res>
    implements _$CreateGuildStateCopyWith<$Res> {
  __$CreateGuildStateCopyWithImpl(
      _CreateGuildState _value, $Res Function(_CreateGuildState) _then)
      : super(_value, (v) => _then(v as _CreateGuildState));

  @override
  _CreateGuildState get _value => super._value as _CreateGuildState;

  @override
  $Res call({
    Object? name = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? guildFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateGuildState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GuildName,
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
              as Option<Either<GuildFailure, Guild>>,
    ));
  }
}

/// @nodoc

class _$_CreateGuildState implements _CreateGuildState {
  const _$_CreateGuildState(
      {required this.name,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.guildFailureOrSuccessOption});

  @override
  final GuildName name;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateGuildState(name: $name, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, guildFailureOrSuccessOption: $guildFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateGuildState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(guildFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$CreateGuildStateCopyWith<_CreateGuildState> get copyWith =>
      __$CreateGuildStateCopyWithImpl<_CreateGuildState>(this, _$identity);
}

abstract class _CreateGuildState implements CreateGuildState {
  const factory _CreateGuildState(
      {required GuildName name,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<GuildFailure, Guild>>
          guildFailureOrSuccessOption}) = _$_CreateGuildState;

  @override
  GuildName get name => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<GuildFailure, Guild>> get guildFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateGuildStateCopyWith<_CreateGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}
