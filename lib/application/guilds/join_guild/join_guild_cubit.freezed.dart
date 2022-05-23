// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'join_guild_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinGuildState {
  InviteLink get inviteLink => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<GuildFailure, Guild>> get guildFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinGuildStateCopyWith<JoinGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGuildStateCopyWith<$Res> {
  factory $JoinGuildStateCopyWith(
          JoinGuildState value, $Res Function(JoinGuildState) then) =
      _$JoinGuildStateCopyWithImpl<$Res>;
  $Res call(
      {InviteLink inviteLink,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class _$JoinGuildStateCopyWithImpl<$Res>
    implements $JoinGuildStateCopyWith<$Res> {
  _$JoinGuildStateCopyWithImpl(this._value, this._then);

  final JoinGuildState _value;
  // ignore: unused_field
  final $Res Function(JoinGuildState) _then;

  @override
  $Res call({
    Object? inviteLink = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? guildFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      inviteLink: inviteLink == freezed
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as InviteLink,
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
abstract class _$$_JoinGuildStateCopyWith<$Res>
    implements $JoinGuildStateCopyWith<$Res> {
  factory _$$_JoinGuildStateCopyWith(
          _$_JoinGuildState value, $Res Function(_$_JoinGuildState) then) =
      __$$_JoinGuildStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {InviteLink inviteLink,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class __$$_JoinGuildStateCopyWithImpl<$Res>
    extends _$JoinGuildStateCopyWithImpl<$Res>
    implements _$$_JoinGuildStateCopyWith<$Res> {
  __$$_JoinGuildStateCopyWithImpl(
      _$_JoinGuildState _value, $Res Function(_$_JoinGuildState) _then)
      : super(_value, (v) => _then(v as _$_JoinGuildState));

  @override
  _$_JoinGuildState get _value => super._value as _$_JoinGuildState;

  @override
  $Res call({
    Object? inviteLink = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? guildFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_JoinGuildState(
      inviteLink: inviteLink == freezed
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as InviteLink,
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

class _$_JoinGuildState implements _JoinGuildState {
  const _$_JoinGuildState(
      {required this.inviteLink,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.guildFailureOrSuccessOption});

  @override
  final InviteLink inviteLink;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption;

  @override
  String toString() {
    return 'JoinGuildState(inviteLink: $inviteLink, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, guildFailureOrSuccessOption: $guildFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinGuildState &&
            const DeepCollectionEquality()
                .equals(other.inviteLink, inviteLink) &&
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
      const DeepCollectionEquality().hash(inviteLink),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(guildFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_JoinGuildStateCopyWith<_$_JoinGuildState> get copyWith =>
      __$$_JoinGuildStateCopyWithImpl<_$_JoinGuildState>(this, _$identity);
}

abstract class _JoinGuildState implements JoinGuildState {
  const factory _JoinGuildState(
      {required final InviteLink inviteLink,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<GuildFailure, Guild>>
          guildFailureOrSuccessOption}) = _$_JoinGuildState;

  @override
  InviteLink get inviteLink => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<GuildFailure, Guild>> get guildFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JoinGuildStateCopyWith<_$_JoinGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}
