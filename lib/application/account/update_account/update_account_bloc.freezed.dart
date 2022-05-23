// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountEventCopyWith<$Res> {
  factory $UpdateAccountEventCopyWith(
          UpdateAccountEvent value, $Res Function(UpdateAccountEvent) then) =
      _$UpdateAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateAccountEventCopyWithImpl<$Res>
    implements $UpdateAccountEventCopyWith<$Res> {
  _$UpdateAccountEventCopyWithImpl(this._value, this._then);

  final UpdateAccountEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateAccountEvent) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'UpdateAccountEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function() saved,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements UpdateAccountEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsernameChangedCopyWith<$Res> {
  factory _$$_UsernameChangedCopyWith(
          _$_UsernameChanged value, $Res Function(_$_UsernameChanged) then) =
      __$$_UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_UsernameChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$$_UsernameChangedCopyWith<$Res> {
  __$$_UsernameChangedCopyWithImpl(
      _$_UsernameChanged _value, $Res Function(_$_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$_UsernameChanged));

  @override
  _$_UsernameChanged get _value => super._value as _$_UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UpdateAccountEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      __$$_UsernameChangedCopyWithImpl<_$_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function() saved,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements UpdateAccountEvent {
  const factory _UsernameChanged(final String username) = _$_UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageChangedCopyWith<$Res> {
  factory _$$_ImageChangedCopyWith(
          _$_ImageChanged value, $Res Function(_$_ImageChanged) then) =
      __$$_ImageChangedCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$$_ImageChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$$_ImageChangedCopyWith<$Res> {
  __$$_ImageChangedCopyWithImpl(
      _$_ImageChanged _value, $Res Function(_$_ImageChanged) _then)
      : super(_value, (v) => _then(v as _$_ImageChanged));

  @override
  _$_ImageChanged get _value => super._value as _$_ImageChanged;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_ImageChanged(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'UpdateAccountEvent.imageChanged(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageChanged &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_ImageChangedCopyWith<_$_ImageChanged> get copyWith =>
      __$$_ImageChangedCopyWithImpl<_$_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function() saved,
  }) {
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
  }) {
    return imageChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements UpdateAccountEvent {
  const factory _ImageChanged(final File image) = _$_ImageChanged;

  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ImageChangedCopyWith<_$_ImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, (v) => _then(v as _$_Saved));

  @override
  _$_Saved get _value => super._value as _$_Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'UpdateAccountEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(File image)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements UpdateAccountEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$UpdateAccountState {
  Username get username => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<AccountFailure, Account>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateAccountStateCopyWith<UpdateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountStateCopyWith<$Res> {
  factory $UpdateAccountStateCopyWith(
          UpdateAccountState value, $Res Function(UpdateAccountState) then) =
      _$UpdateAccountStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      File? image,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<AccountFailure, Account>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$UpdateAccountStateCopyWithImpl<$Res>
    implements $UpdateAccountStateCopyWith<$Res> {
  _$UpdateAccountStateCopyWithImpl(this._value, this._then);

  final UpdateAccountState _value;
  // ignore: unused_field
  final $Res Function(UpdateAccountState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? emailAddress = freezed,
    Object? image = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccountFailure, Account>>,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdateAccountStateCopyWith<$Res>
    implements $UpdateAccountStateCopyWith<$Res> {
  factory _$$_UpdateAccountStateCopyWith(_$_UpdateAccountState value,
          $Res Function(_$_UpdateAccountState) then) =
      __$$_UpdateAccountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      File? image,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<AccountFailure, Account>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_UpdateAccountStateCopyWithImpl<$Res>
    extends _$UpdateAccountStateCopyWithImpl<$Res>
    implements _$$_UpdateAccountStateCopyWith<$Res> {
  __$$_UpdateAccountStateCopyWithImpl(
      _$_UpdateAccountState _value, $Res Function(_$_UpdateAccountState) _then)
      : super(_value, (v) => _then(v as _$_UpdateAccountState));

  @override
  _$_UpdateAccountState get _value => super._value as _$_UpdateAccountState;

  @override
  $Res call({
    Object? username = freezed,
    Object? emailAddress = freezed,
    Object? image = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_UpdateAccountState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccountFailure, Account>>,
    ));
  }
}

/// @nodoc

class _$_UpdateAccountState implements _UpdateAccountState {
  const _$_UpdateAccountState(
      {required this.username,
      required this.emailAddress,
      this.image = null,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  @JsonKey()
  final File? image;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<AccountFailure, Account>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateAccountState(username: $username, emailAddress: $emailAddress, image: $image, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAccountState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateAccountStateCopyWith<_$_UpdateAccountState> get copyWith =>
      __$$_UpdateAccountStateCopyWithImpl<_$_UpdateAccountState>(
          this, _$identity);
}

abstract class _UpdateAccountState implements UpdateAccountState {
  const factory _UpdateAccountState(
      {required final Username username,
      required final EmailAddress emailAddress,
      final File? image,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final Option<Either<AccountFailure, Account>>
          saveFailureOrSuccessOption}) = _$_UpdateAccountState;

  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  File? get image => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<AccountFailure, Account>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountStateCopyWith<_$_UpdateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
