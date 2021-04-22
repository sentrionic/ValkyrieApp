// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  TooManyGuilds<T> tooManyGuilds<T>(
      {required T failedValue, required int max}) {
    return TooManyGuilds<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidUsername<T> invalidUsername<T>({required T failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

  InvalidChannelName<T> invalidChannelName<T>({required T failedValue}) {
    return InvalidChannelName<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  PasswordsDontMatch<T> passwordsDontMatch<T>({required T failedValue}) {
    return PasswordsDontMatch<T>(
      failedValue: failedValue,
    );
  }

  ExceedingSize<T> exceedingSize<T>(
      {required T failedValue, required int max}) {
    return ExceedingSize<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  InvalidColor<T> invalidColor<T>({required T failedValue}) {
    return InvalidColor<T>(
      failedValue: failedValue,
    );
  }

  InvalidUID<T> invalidUID<T>({required T failedValue}) {
    return InvalidUID<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

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
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
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
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

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
  const factory ExceedingLength({required T failedValue, required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
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
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

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
  const factory Empty({required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TooManyGuildsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $TooManyGuildsCopyWith(
          TooManyGuilds<T> value, $Res Function(TooManyGuilds<T>) then) =
      _$TooManyGuildsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$TooManyGuildsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $TooManyGuildsCopyWith<T, $Res> {
  _$TooManyGuildsCopyWithImpl(
      TooManyGuilds<T> _value, $Res Function(TooManyGuilds<T>) _then)
      : super(_value, (v) => _then(v as TooManyGuilds<T>));

  @override
  TooManyGuilds<T> get _value => super._value as TooManyGuilds<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(TooManyGuilds<T>(
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
        (other is TooManyGuilds<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $TooManyGuildsCopyWith<T, TooManyGuilds<T>> get copyWith =>
      _$TooManyGuildsCopyWithImpl<T, TooManyGuilds<T>>(this, _$identity);

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
  const factory TooManyGuilds({required T failedValue, required int max}) =
      _$TooManyGuilds<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TooManyGuildsCopyWith<T, TooManyGuilds<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
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
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

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
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
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
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

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
  const factory InvalidUsername({required T failedValue}) =
      _$InvalidUsername<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidChannelNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidChannelNameCopyWith(InvalidChannelName<T> value,
          $Res Function(InvalidChannelName<T>) then) =
      _$InvalidChannelNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidChannelNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidChannelNameCopyWith<T, $Res> {
  _$InvalidChannelNameCopyWithImpl(
      InvalidChannelName<T> _value, $Res Function(InvalidChannelName<T>) _then)
      : super(_value, (v) => _then(v as InvalidChannelName<T>));

  @override
  InvalidChannelName<T> get _value => super._value as InvalidChannelName<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidChannelName<T>(
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
        (other is InvalidChannelName<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidChannelNameCopyWith<T, InvalidChannelName<T>> get copyWith =>
      _$InvalidChannelNameCopyWithImpl<T, InvalidChannelName<T>>(
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
  const factory InvalidChannelName({required T failedValue}) =
      _$InvalidChannelName<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidChannelNameCopyWith<T, InvalidChannelName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
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
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

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
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordsDontMatchCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $PasswordsDontMatchCopyWith(PasswordsDontMatch<T> value,
          $Res Function(PasswordsDontMatch<T>) then) =
      _$PasswordsDontMatchCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$PasswordsDontMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PasswordsDontMatchCopyWith<T, $Res> {
  _$PasswordsDontMatchCopyWithImpl(
      PasswordsDontMatch<T> _value, $Res Function(PasswordsDontMatch<T>) _then)
      : super(_value, (v) => _then(v as PasswordsDontMatch<T>));

  @override
  PasswordsDontMatch<T> get _value => super._value as PasswordsDontMatch<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(PasswordsDontMatch<T>(
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
        (other is PasswordsDontMatch<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $PasswordsDontMatchCopyWith<T, PasswordsDontMatch<T>> get copyWith =>
      _$PasswordsDontMatchCopyWithImpl<T, PasswordsDontMatch<T>>(
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
  const factory PasswordsDontMatch({required T failedValue}) =
      _$PasswordsDontMatch<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PasswordsDontMatchCopyWith<T, PasswordsDontMatch<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingSizeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingSizeCopyWith(
          ExceedingSize<T> value, $Res Function(ExceedingSize<T>) then) =
      _$ExceedingSizeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingSizeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingSizeCopyWith<T, $Res> {
  _$ExceedingSizeCopyWithImpl(
      ExceedingSize<T> _value, $Res Function(ExceedingSize<T>) _then)
      : super(_value, (v) => _then(v as ExceedingSize<T>));

  @override
  ExceedingSize<T> get _value => super._value as ExceedingSize<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingSize<T>(
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
        (other is ExceedingSize<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingSizeCopyWith<T, ExceedingSize<T>> get copyWith =>
      _$ExceedingSizeCopyWithImpl<T, ExceedingSize<T>>(this, _$identity);

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
  const factory ExceedingSize({required T failedValue, required int max}) =
      _$ExceedingSize<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingSizeCopyWith<T, ExceedingSize<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidColorCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidColorCopyWith(
          InvalidColor<T> value, $Res Function(InvalidColor<T>) then) =
      _$InvalidColorCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidColorCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidColorCopyWith<T, $Res> {
  _$InvalidColorCopyWithImpl(
      InvalidColor<T> _value, $Res Function(InvalidColor<T>) _then)
      : super(_value, (v) => _then(v as InvalidColor<T>));

  @override
  InvalidColor<T> get _value => super._value as InvalidColor<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidColor<T>(
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
        (other is InvalidColor<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidColorCopyWith<T, InvalidColor<T>> get copyWith =>
      _$InvalidColorCopyWithImpl<T, InvalidColor<T>>(this, _$identity);

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
  const factory InvalidColor({required T failedValue}) = _$InvalidColor<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidColorCopyWith<T, InvalidColor<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUIDCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUIDCopyWith(
          InvalidUID<T> value, $Res Function(InvalidUID<T>) then) =
      _$InvalidUIDCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUIDCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUIDCopyWith<T, $Res> {
  _$InvalidUIDCopyWithImpl(
      InvalidUID<T> _value, $Res Function(InvalidUID<T>) _then)
      : super(_value, (v) => _then(v as InvalidUID<T>));

  @override
  InvalidUID<T> get _value => super._value as InvalidUID<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidUID<T>(
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
        (other is InvalidUID<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUIDCopyWith<T, InvalidUID<T>> get copyWith =>
      _$InvalidUIDCopyWithImpl<T, InvalidUID<T>>(this, _$identity);

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
  const factory InvalidUID({required T failedValue}) = _$InvalidUID<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidUIDCopyWith<T, InvalidUID<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
