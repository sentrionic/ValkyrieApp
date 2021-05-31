// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'guild_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GuildFailureTearOff {
  const _$GuildFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _InvalidLink invalidLink() {
    return const _InvalidLink();
  }
}

/// @nodoc
const $GuildFailure = _$GuildFailureTearOff();

/// @nodoc
mixin _$GuildFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidLink value) invalidLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidLink value)? invalidLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildFailureCopyWith<$Res> {
  factory $GuildFailureCopyWith(
          GuildFailure value, $Res Function(GuildFailure) then) =
      _$GuildFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuildFailureCopyWithImpl<$Res> implements $GuildFailureCopyWith<$Res> {
  _$GuildFailureCopyWithImpl(this._value, this._then);

  final GuildFailure _value;
  // ignore: unused_field
  final $Res Function(GuildFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$GuildFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'GuildFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidLink,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidLink,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidLink value) invalidLink,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidLink value)? invalidLink,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements GuildFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$InvalidLinkCopyWith<$Res> {
  factory _$InvalidLinkCopyWith(
          _InvalidLink value, $Res Function(_InvalidLink) then) =
      __$InvalidLinkCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidLinkCopyWithImpl<$Res> extends _$GuildFailureCopyWithImpl<$Res>
    implements _$InvalidLinkCopyWith<$Res> {
  __$InvalidLinkCopyWithImpl(
      _InvalidLink _value, $Res Function(_InvalidLink) _then)
      : super(_value, (v) => _then(v as _InvalidLink));

  @override
  _InvalidLink get _value => super._value as _InvalidLink;
}

/// @nodoc

class _$_InvalidLink implements _InvalidLink {
  const _$_InvalidLink();

  @override
  String toString() {
    return 'GuildFailure.invalidLink()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidLink);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidLink,
  }) {
    return invalidLink();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidLink,
    required TResult orElse(),
  }) {
    if (invalidLink != null) {
      return invalidLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidLink value) invalidLink,
  }) {
    return invalidLink(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidLink value)? invalidLink,
    required TResult orElse(),
  }) {
    if (invalidLink != null) {
      return invalidLink(this);
    }
    return orElse();
  }
}

abstract class _InvalidLink implements GuildFailure {
  const factory _InvalidLink() = _$_InvalidLink;
}
