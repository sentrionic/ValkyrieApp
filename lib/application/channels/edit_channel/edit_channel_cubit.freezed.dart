// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_channel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditChannelState {
  ChannelName get name => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ChannelFailure, Unit>> get channelFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditChannelStateCopyWith<EditChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditChannelStateCopyWith<$Res> {
  factory $EditChannelStateCopyWith(
          EditChannelState value, $Res Function(EditChannelState) then) =
      _$EditChannelStateCopyWithImpl<$Res, EditChannelState>;
  @useResult
  $Res call(
      {ChannelName name,
      bool isPublic,
      List<Member> members,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ChannelFailure, Unit>> channelFailureOrSuccessOption});
}

/// @nodoc
class _$EditChannelStateCopyWithImpl<$Res, $Val extends EditChannelState>
    implements $EditChannelStateCopyWith<$Res> {
  _$EditChannelStateCopyWithImpl(this._value, this._then);

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
              as Option<Either<ChannelFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditChannelStateCopyWith<$Res>
    implements $EditChannelStateCopyWith<$Res> {
  factory _$$_EditChannelStateCopyWith(
          _$_EditChannelState value, $Res Function(_$_EditChannelState) then) =
      __$$_EditChannelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChannelName name,
      bool isPublic,
      List<Member> members,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ChannelFailure, Unit>> channelFailureOrSuccessOption});
}

/// @nodoc
class __$$_EditChannelStateCopyWithImpl<$Res>
    extends _$EditChannelStateCopyWithImpl<$Res, _$_EditChannelState>
    implements _$$_EditChannelStateCopyWith<$Res> {
  __$$_EditChannelStateCopyWithImpl(
      _$_EditChannelState _value, $Res Function(_$_EditChannelState) _then)
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
    return _then(_$_EditChannelState(
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
              as Option<Either<ChannelFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_EditChannelState implements _EditChannelState {
  const _$_EditChannelState(
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
  final Option<Either<ChannelFailure, Unit>> channelFailureOrSuccessOption;

  @override
  String toString() {
    return 'EditChannelState(name: $name, isPublic: $isPublic, members: $members, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, channelFailureOrSuccessOption: $channelFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditChannelState &&
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
  _$$_EditChannelStateCopyWith<_$_EditChannelState> get copyWith =>
      __$$_EditChannelStateCopyWithImpl<_$_EditChannelState>(this, _$identity);
}

abstract class _EditChannelState implements EditChannelState {
  const factory _EditChannelState(
      {required final ChannelName name,
      required final bool isPublic,
      required final List<Member> members,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<ChannelFailure, Unit>>
          channelFailureOrSuccessOption}) = _$_EditChannelState;

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
  Option<Either<ChannelFailure, Unit>> get channelFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_EditChannelStateCopyWith<_$_EditChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}
