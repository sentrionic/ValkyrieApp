// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$CreateChannelStateCopyWithImpl<$Res>;
  $Res call(
      {ChannelName name,
      bool isPublic,
      List<Member> members,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ChannelFailure, Channel>> channelFailureOrSuccessOption});
}

/// @nodoc
class _$CreateChannelStateCopyWithImpl<$Res>
    implements $CreateChannelStateCopyWith<$Res> {
  _$CreateChannelStateCopyWithImpl(this._value, this._then);

  final CreateChannelState _value;
  // ignore: unused_field
  final $Res Function(CreateChannelState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? isPublic = freezed,
    Object? members = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? channelFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChannelName,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      channelFailureOrSuccessOption: channelFailureOrSuccessOption == freezed
          ? _value.channelFailureOrSuccessOption
          : channelFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChannelFailure, Channel>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateChannelStateCopyWith<$Res>
    implements $CreateChannelStateCopyWith<$Res> {
  factory _$$_CreateChannelStateCopyWith(_$_CreateChannelState value,
          $Res Function(_$_CreateChannelState) then) =
      __$$_CreateChannelStateCopyWithImpl<$Res>;
  @override
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
    extends _$CreateChannelStateCopyWithImpl<$Res>
    implements _$$_CreateChannelStateCopyWith<$Res> {
  __$$_CreateChannelStateCopyWithImpl(
      _$_CreateChannelState _value, $Res Function(_$_CreateChannelState) _then)
      : super(_value, (v) => _then(v as _$_CreateChannelState));

  @override
  _$_CreateChannelState get _value => super._value as _$_CreateChannelState;

  @override
  $Res call({
    Object? name = freezed,
    Object? isPublic = freezed,
    Object? members = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? channelFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_CreateChannelState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChannelName,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      channelFailureOrSuccessOption: channelFailureOrSuccessOption == freezed
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
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isPublic, isPublic) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.channelFailureOrSuccessOption,
                channelFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isPublic),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(channelFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
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
  ChannelName get name => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  List<Member> get members => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ChannelFailure, Channel>> get channelFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateChannelStateCopyWith<_$_CreateChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}
