// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_channel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateChannelState {
  ChannelName get name => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ChannelFailure, Channel>> get channelFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateChannelStateCopyWith<CreateChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChannelStateCopyWith<$Res> {
  factory $CreateChannelStateCopyWith(
          CreateChannelState value, $Res Function(CreateChannelState) then) =
      _$CreateChannelStateCopyWithImpl<$Res, CreateChannelState>;
  @useResult
  $Res call(
      {ChannelName name,
      bool isPublic,
      List<Member> members,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ChannelFailure, Channel>> channelFailureOrSuccessOption});
}

/// @nodoc
class _$CreateChannelStateCopyWithImpl<$Res, $Val extends CreateChannelState>
    implements $CreateChannelStateCopyWith<$Res> {
  _$CreateChannelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isPublic = null,
    Object? members = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? channelFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChannelName,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      channelFailureOrSuccessOption: null == channelFailureOrSuccessOption
          ? _value.channelFailureOrSuccessOption
          : channelFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChannelFailure, Channel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateChannelStateCopyWith<$Res>
    implements $CreateChannelStateCopyWith<$Res> {
  factory _$$_CreateChannelStateCopyWith(_$_CreateChannelState value,
          $Res Function(_$_CreateChannelState) then) =
      __$$_CreateChannelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChannelName name,
      bool isPublic,
      List<Member> members,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ChannelFailure, Channel>> channelFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateChannelStateCopyWithImpl<$Res>
    extends _$CreateChannelStateCopyWithImpl<$Res, _$_CreateChannelState>
    implements _$$_CreateChannelStateCopyWith<$Res> {
  __$$_CreateChannelStateCopyWithImpl(
      _$_CreateChannelState _value, $Res Function(_$_CreateChannelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isPublic = null,
    Object? members = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? channelFailureOrSuccessOption = null,
  }) {
    return _then(_$_CreateChannelState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChannelName,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      channelFailureOrSuccessOption: null == channelFailureOrSuccessOption
          ? _value.channelFailureOrSuccessOption
          : channelFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChannelFailure, Channel>>,
    ));
  }
}

/// @nodoc

class _$_CreateChannelState implements _CreateChannelState {
  const _$_CreateChannelState(
      {required this.name,
      required this.isPublic,
      required final List<Member> members,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.channelFailureOrSuccessOption})
      : _members = members;

  @override
  final ChannelName name;
  @override
  final bool isPublic;
  final List<Member> _members;
  @override
  List<Member> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ChannelFailure, Channel>> channelFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateChannelState(name: $name, isPublic: $isPublic, members: $members, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, channelFailureOrSuccessOption: $channelFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChannelState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.channelFailureOrSuccessOption,
                    channelFailureOrSuccessOption) ||
                other.channelFailureOrSuccessOption ==
                    channelFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      isPublic,
      const DeepCollectionEquality().hash(_members),
      showErrorMessages,
      isSubmitting,
      channelFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChannelStateCopyWith<_$_CreateChannelState> get copyWith =>
      __$$_CreateChannelStateCopyWithImpl<_$_CreateChannelState>(
          this, _$identity);
}

abstract class _CreateChannelState implements CreateChannelState {
  const factory _CreateChannelState(
      {required final ChannelName name,
      required final bool isPublic,
      required final List<Member> members,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<ChannelFailure, Channel>>
          channelFailureOrSuccessOption}) = _$_CreateChannelState;

  @override
  ChannelName get name;
  @override
  bool get isPublic;
  @override
  List<Member> get members;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ChannelFailure, Channel>> get channelFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CreateChannelStateCopyWith<_$_CreateChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}
