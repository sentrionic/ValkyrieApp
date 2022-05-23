// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthCopyWith(_$ExceedingLength<T> value,
          $Res Function(_$ExceedingLength<T>) then) =
      __$$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ExceedingLengthCopyWith<T, $Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength<T> _value, $Res Function(_$ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _$ExceedingLength<T>));

  @override
  _$ExceedingLength<T> get _value => super._value as _$ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<T, _$ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$ExceedingLength<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, (v) => _then(v as _$Empty<T>));

  @override
  _$Empty<T> get _value => super._value as _$Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$Empty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooManyGuildsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$TooManyGuildsCopyWith(
          _$TooManyGuilds<T> value, $Res Function(_$TooManyGuilds<T>) then) =
      __$$TooManyGuildsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$TooManyGuildsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$TooManyGuildsCopyWith<T, $Res> {
  __$$TooManyGuildsCopyWithImpl(
      _$TooManyGuilds<T> _value, $Res Function(_$TooManyGuilds<T>) _then)
      : super(_value, (v) => _then(v as _$TooManyGuilds<T>));

  @override
  _$TooManyGuilds<T> get _value => super._value as _$TooManyGuilds<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$TooManyGuilds<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TooManyGuilds<T> implements TooManyGuilds<T> {
  const _$TooManyGuilds({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.tooManyGuilds(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooManyGuilds<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$TooManyGuildsCopyWith<T, _$TooManyGuilds<T>> get copyWith =>
      __$$TooManyGuildsCopyWithImpl<T, _$TooManyGuilds<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return tooManyGuilds(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return tooManyGuilds?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (tooManyGuilds != null) {
      return tooManyGuilds(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return tooManyGuilds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return tooManyGuilds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (tooManyGuilds != null) {
      return tooManyGuilds(this);
    }
    return orElse();
  }
}

abstract class TooManyGuilds<T> implements ValueFailure<T> {
  const factory TooManyGuilds(
      {required final T failedValue,
      required final int max}) = _$TooManyGuilds<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TooManyGuildsCopyWith<T, _$TooManyGuilds<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidUsernameCopyWith(_$InvalidUsername<T> value,
          $Res Function(_$InvalidUsername<T>) then) =
      __$$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidUsernameCopyWith<T, $Res> {
  __$$InvalidUsernameCopyWithImpl(
      _$InvalidUsername<T> _value, $Res Function(_$InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidUsername<T>));

  @override
  _$InvalidUsername<T> get _value => super._value as _$InvalidUsername<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidUsername<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidUsername<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidUsernameCopyWith<T, _$InvalidUsername<T>> get copyWith =>
      __$$InvalidUsernameCopyWithImpl<T, _$InvalidUsername<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return invalidUsername?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return invalidUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({required final T failedValue}) =
      _$InvalidUsername<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidUsernameCopyWith<T, _$InvalidUsername<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidChannelNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidChannelNameCopyWith(_$InvalidChannelName<T> value,
          $Res Function(_$InvalidChannelName<T>) then) =
      __$$InvalidChannelNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidChannelNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidChannelNameCopyWith<T, $Res> {
  __$$InvalidChannelNameCopyWithImpl(_$InvalidChannelName<T> _value,
      $Res Function(_$InvalidChannelName<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidChannelName<T>));

  @override
  _$InvalidChannelName<T> get _value => super._value as _$InvalidChannelName<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidChannelName<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidChannelName<T> implements InvalidChannelName<T> {
  const _$InvalidChannelName({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidChannelName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidChannelName<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidChannelNameCopyWith<T, _$InvalidChannelName<T>> get copyWith =>
      __$$InvalidChannelNameCopyWithImpl<T, _$InvalidChannelName<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return invalidChannelName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return invalidChannelName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidChannelName != null) {
      return invalidChannelName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return invalidChannelName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return invalidChannelName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidChannelName != null) {
      return invalidChannelName(this);
    }
    return orElse();
  }
}

abstract class InvalidChannelName<T> implements ValueFailure<T> {
  const factory InvalidChannelName({required final T failedValue}) =
      _$InvalidChannelName<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidChannelNameCopyWith<T, _$InvalidChannelName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _$ShortPassword<T>));

  @override
  _$ShortPassword<T> get _value => super._value as _$ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordsDontMatchCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordsDontMatchCopyWith(_$PasswordsDontMatch<T> value,
          $Res Function(_$PasswordsDontMatch<T>) then) =
      __$$PasswordsDontMatchCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$PasswordsDontMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$PasswordsDontMatchCopyWith<T, $Res> {
  __$$PasswordsDontMatchCopyWithImpl(_$PasswordsDontMatch<T> _value,
      $Res Function(_$PasswordsDontMatch<T>) _then)
      : super(_value, (v) => _then(v as _$PasswordsDontMatch<T>));

  @override
  _$PasswordsDontMatch<T> get _value => super._value as _$PasswordsDontMatch<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordsDontMatch<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordsDontMatch<T> implements PasswordsDontMatch<T> {
  const _$PasswordsDontMatch({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordsDontMatch(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordsDontMatch<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$PasswordsDontMatchCopyWith<T, _$PasswordsDontMatch<T>> get copyWith =>
      __$$PasswordsDontMatchCopyWithImpl<T, _$PasswordsDontMatch<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return passwordsDontMatch(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return passwordsDontMatch?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return passwordsDontMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return passwordsDontMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch(this);
    }
    return orElse();
  }
}

abstract class PasswordsDontMatch<T> implements ValueFailure<T> {
  const factory PasswordsDontMatch({required final T failedValue}) =
      _$PasswordsDontMatch<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PasswordsDontMatchCopyWith<T, _$PasswordsDontMatch<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceedingSizeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingSizeCopyWith(
          _$ExceedingSize<T> value, $Res Function(_$ExceedingSize<T>) then) =
      __$$ExceedingSizeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ExceedingSizeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ExceedingSizeCopyWith<T, $Res> {
  __$$ExceedingSizeCopyWithImpl(
      _$ExceedingSize<T> _value, $Res Function(_$ExceedingSize<T>) _then)
      : super(_value, (v) => _then(v as _$ExceedingSize<T>));

  @override
  _$ExceedingSize<T> get _value => super._value as _$ExceedingSize<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$ExceedingSize<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingSize<T> implements ExceedingSize<T> {
  const _$ExceedingSize({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingSize(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingSize<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$ExceedingSizeCopyWith<T, _$ExceedingSize<T>> get copyWith =>
      __$$ExceedingSizeCopyWithImpl<T, _$ExceedingSize<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return exceedingSize(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return exceedingSize?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (exceedingSize != null) {
      return exceedingSize(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return exceedingSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return exceedingSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (exceedingSize != null) {
      return exceedingSize(this);
    }
    return orElse();
  }
}

abstract class ExceedingSize<T> implements ValueFailure<T> {
  const factory ExceedingSize(
      {required final T failedValue,
      required final int max}) = _$ExceedingSize<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingSizeCopyWith<T, _$ExceedingSize<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidColorCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidColorCopyWith(
          _$InvalidColor<T> value, $Res Function(_$InvalidColor<T>) then) =
      __$$InvalidColorCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidColorCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidColorCopyWith<T, $Res> {
  __$$InvalidColorCopyWithImpl(
      _$InvalidColor<T> _value, $Res Function(_$InvalidColor<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidColor<T>));

  @override
  _$InvalidColor<T> get _value => super._value as _$InvalidColor<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidColor<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidColor<T> implements InvalidColor<T> {
  const _$InvalidColor({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidColor(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidColor<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidColorCopyWith<T, _$InvalidColor<T>> get copyWith =>
      __$$InvalidColorCopyWithImpl<T, _$InvalidColor<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return invalidColor(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return invalidColor?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidColor != null) {
      return invalidColor(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return invalidColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return invalidColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidColor != null) {
      return invalidColor(this);
    }
    return orElse();
  }
}

abstract class InvalidColor<T> implements ValueFailure<T> {
  const factory InvalidColor({required final T failedValue}) =
      _$InvalidColor<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidColorCopyWith<T, _$InvalidColor<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidUIDCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidUIDCopyWith(
          _$InvalidUID<T> value, $Res Function(_$InvalidUID<T>) then) =
      __$$InvalidUIDCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidUIDCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidUIDCopyWith<T, $Res> {
  __$$InvalidUIDCopyWithImpl(
      _$InvalidUID<T> _value, $Res Function(_$InvalidUID<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidUID<T>));

  @override
  _$InvalidUID<T> get _value => super._value as _$InvalidUID<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidUID<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUID<T> implements InvalidUID<T> {
  const _$InvalidUID({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUID(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidUID<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidUIDCopyWith<T, _$InvalidUID<T>> get copyWith =>
      __$$InvalidUIDCopyWithImpl<T, _$InvalidUID<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) tooManyGuilds,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUsername,
    required TResult Function(T failedValue) invalidChannelName,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDontMatch,
    required TResult Function(T failedValue, int max) exceedingSize,
    required TResult Function(T failedValue) invalidColor,
    required TResult Function(T failedValue) invalidUID,
  }) {
    return invalidUID(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
  }) {
    return invalidUID?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? tooManyGuilds,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUsername,
    TResult Function(T failedValue)? invalidChannelName,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDontMatch,
    TResult Function(T failedValue, int max)? exceedingSize,
    TResult Function(T failedValue)? invalidColor,
    TResult Function(T failedValue)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidUID != null) {
      return invalidUID(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(TooManyGuilds<T> value) tooManyGuilds,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
    required TResult Function(InvalidChannelName<T> value) invalidChannelName,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDontMatch<T> value) passwordsDontMatch,
    required TResult Function(ExceedingSize<T> value) exceedingSize,
    required TResult Function(InvalidColor<T> value) invalidColor,
    required TResult Function(InvalidUID<T> value) invalidUID,
  }) {
    return invalidUID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
  }) {
    return invalidUID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(TooManyGuilds<T> value)? tooManyGuilds,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    TResult Function(InvalidChannelName<T> value)? invalidChannelName,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDontMatch<T> value)? passwordsDontMatch,
    TResult Function(ExceedingSize<T> value)? exceedingSize,
    TResult Function(InvalidColor<T> value)? invalidColor,
    TResult Function(InvalidUID<T> value)? invalidUID,
    required TResult orElse(),
  }) {
    if (invalidUID != null) {
      return invalidUID(this);
    }
    return orElse();
  }
}

abstract class InvalidUID<T> implements ValueFailure<T> {
  const factory InvalidUID({required final T failedValue}) = _$InvalidUID<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidUIDCopyWith<T, _$InvalidUID<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
