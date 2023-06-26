// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$JoinGuildStateCopyWithImpl<$Res, JoinGuildState>;
  @useResult
  $Res call(
      {InviteLink inviteLink,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class _$JoinGuildStateCopyWithImpl<$Res, $Val extends JoinGuildState>
    implements $JoinGuildStateCopyWith<$Res> {
  _$JoinGuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLink = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? guildFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      inviteLink: null == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as InviteLink,
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
abstract class _$$_JoinGuildStateCopyWith<$Res>
    implements $JoinGuildStateCopyWith<$Res> {
  factory _$$_JoinGuildStateCopyWith(
          _$_JoinGuildState value, $Res Function(_$_JoinGuildState) then) =
      __$$_JoinGuildStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InviteLink inviteLink,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption});
}

/// @nodoc
class __$$_JoinGuildStateCopyWithImpl<$Res>
    extends _$JoinGuildStateCopyWithImpl<$Res, _$_JoinGuildState>
    implements _$$_JoinGuildStateCopyWith<$Res> {
  __$$_JoinGuildStateCopyWithImpl(
      _$_JoinGuildState _value, $Res Function(_$_JoinGuildState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLink = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? guildFailureOrSuccessOption = null,
  }) {
    return _then(_$_JoinGuildState(
      inviteLink: null == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as InviteLink,
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
            (identical(other.inviteLink, inviteLink) ||
                other.inviteLink == inviteLink) &&
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
  int get hashCode => Object.hash(runtimeType, inviteLink, showErrorMessages,
      isSubmitting, guildFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  InviteLink get inviteLink;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<GuildFailure, Guild>> get guildFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_JoinGuildStateCopyWith<_$_JoinGuildState> get copyWith =>
      throw _privateConstructorUsedError;
}
