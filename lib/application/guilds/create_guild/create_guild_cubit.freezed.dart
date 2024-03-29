// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_guild_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$CreateGuildStateCopyWithImpl<$Res, CreateGuildState>;
  @useResult
  $Res call(
      {GuildName name,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class _$CreateGuildStateCopyWithImpl<$Res, $Val extends CreateGuildState>
    implements $CreateGuildStateCopyWith<$Res> {
  _$CreateGuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? guildFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GuildName,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      guildFailureOrSuccessOption: null == guildFailureOrSuccessOption
          ? _value.guildFailureOrSuccessOption
          : guildFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GuildFailure, Guild>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateGuildStateCopyWith<$Res>
    implements $CreateGuildStateCopyWith<$Res> {
  factory _$$_CreateGuildStateCopyWith(
          _$_CreateGuildState value, $Res Function(_$_CreateGuildState) then) =
      __$$_CreateGuildStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GuildName name,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateGuildStateCopyWithImpl<$Res>
    extends _$CreateGuildStateCopyWithImpl<$Res, _$_CreateGuildState>
    implements _$$_CreateGuildStateCopyWith<$Res> {
  __$$_CreateGuildStateCopyWithImpl(
      _$_CreateGuildState _value, $Res Function(_$_CreateGuildState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? guildFailureOrSuccessOption = null,
  }) {
    return _then(_$_CreateGuildState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as GuildName,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      guildFailureOrSuccessOption: null == guildFailureOrSuccessOption
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
        (other.runtimeType == runtimeType &&
            other is _$_CreateGuildState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.guildFailureOrSuccessOption,
                    guildFailureOrSuccessOption) ||
                other.guildFailureOrSuccessOption ==
                    guildFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, showErrorMessages,
      isSubmitting, guildFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateGuildStateCopyWith<_$_CreateGuildState> get copyWith =>
      __$$_CreateGuildStateCopyWithImpl<_$_CreateGuildState>(this, _$identity);
}

abstract class _CreateGuildState implements CreateGuildState {
  const factory _CreateGuildState(
      {required final GuildName name,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<GuildFailure, Guild>>
          guildFailureOrSuccessOption}) = _$_CreateGuildState;

  @override
  GuildName get name;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<GuildFailure, Guild>> get guildFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CreateGuildStateCopyWith<_$_CreateGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}
