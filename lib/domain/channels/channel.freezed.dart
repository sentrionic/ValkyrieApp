// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Channel {
  String get id => throw _privateConstructorUsedError;
  ChannelName get name => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get hasNotification => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call({String id, ChannelName name, bool isPublic, bool hasNotification});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isPublic = freezed,
    Object? hasNotification = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChannelName,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotification: hasNotification == freezed
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$_ChannelCopyWith(
          _$_Channel value, $Res Function(_$_Channel) then) =
      __$$_ChannelCopyWithImpl<$Res>;
  @override
  $Res call({String id, ChannelName name, bool isPublic, bool hasNotification});
}

/// @nodoc
class __$$_ChannelCopyWithImpl<$Res> extends _$ChannelCopyWithImpl<$Res>
    implements _$$_ChannelCopyWith<$Res> {
  __$$_ChannelCopyWithImpl(_$_Channel _value, $Res Function(_$_Channel) _then)
      : super(_value, (v) => _then(v as _$_Channel));

  @override
  _$_Channel get _value => super._value as _$_Channel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isPublic = freezed,
    Object? hasNotification = freezed,
  }) {
    return _then(_$_Channel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChannelName,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotification: hasNotification == freezed
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Channel extends _Channel {
  const _$_Channel(
      {required this.id,
      required this.name,
      required this.isPublic,
      required this.hasNotification})
      : super._();

  @override
  final String id;
  @override
  final ChannelName name;
  @override
  final bool isPublic;
  @override
  final bool hasNotification;

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, isPublic: $isPublic, hasNotification: $hasNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Channel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isPublic, isPublic) &&
            const DeepCollectionEquality()
                .equals(other.hasNotification, hasNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isPublic),
      const DeepCollectionEquality().hash(hasNotification));

  @JsonKey(ignore: true)
  @override
  _$$_ChannelCopyWith<_$_Channel> get copyWith =>
      __$$_ChannelCopyWithImpl<_$_Channel>(this, _$identity);
}

abstract class _Channel extends Channel {
  const factory _Channel(
      {required final String id,
      required final ChannelName name,
      required final bool isPublic,
      required final bool hasNotification}) = _$_Channel;
  const _Channel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  ChannelName get name => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  bool get hasNotification => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelCopyWith<_$_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}
