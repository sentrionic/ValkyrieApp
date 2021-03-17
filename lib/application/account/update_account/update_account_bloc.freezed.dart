// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateAccountEventTearOff {
  const _$UpdateAccountEventTearOff();

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _UsernameChanged usernameChanged(String username) {
    return _UsernameChanged(
      username,
    );
  }

  _ImageChanged imageChanged(File image) {
    return _ImageChanged(
      image,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $UpdateAccountEvent = _$UpdateAccountEventTearOff();

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
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
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
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

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
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_UsernameChanged(
      username == freezed ? _value.username : username as String,
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
        (other is _UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

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
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_ImageChanged(
      image == freezed ? _value.image : image as File,
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
        (other is _ImageChanged &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

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
  const factory _ImageChanged(File image) = _$_ImageChanged;

  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$UpdateAccountEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
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
    return identical(this, other) || (other is _Saved);
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
class _$UpdateAccountStateTearOff {
  const _$UpdateAccountStateTearOff();

  _UpdateAccountState call(
      {required Username username,
      required EmailAddress emailAddress,
      File? image = null,
      required bool showErrorMessages,
      required bool isSaving,
      required Option<Either<AccountFailure, Account>>
          saveFailureOrSuccessOption}) {
    return _UpdateAccountState(
      username: username,
      emailAddress: emailAddress,
      image: image,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UpdateAccountState = _$UpdateAccountStateTearOff();

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
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      image: image == freezed ? _value.image : image as File?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<AccountFailure, Account>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateAccountStateCopyWith<$Res>
    implements $UpdateAccountStateCopyWith<$Res> {
  factory _$UpdateAccountStateCopyWith(
          _UpdateAccountState value, $Res Function(_UpdateAccountState) then) =
      __$UpdateAccountStateCopyWithImpl<$Res>;
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
class __$UpdateAccountStateCopyWithImpl<$Res>
    extends _$UpdateAccountStateCopyWithImpl<$Res>
    implements _$UpdateAccountStateCopyWith<$Res> {
  __$UpdateAccountStateCopyWithImpl(
      _UpdateAccountState _value, $Res Function(_UpdateAccountState) _then)
      : super(_value, (v) => _then(v as _UpdateAccountState));

  @override
  _UpdateAccountState get _value => super._value as _UpdateAccountState;

  @override
  $Res call({
    Object? username = freezed,
    Object? emailAddress = freezed,
    Object? image = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateAccountState(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      image: image == freezed ? _value.image : image as File?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
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
  @JsonKey(defaultValue: null)
  @override
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
        (other is _UpdateAccountState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateAccountStateCopyWith<_UpdateAccountState> get copyWith =>
      __$UpdateAccountStateCopyWithImpl<_UpdateAccountState>(this, _$identity);
}

abstract class _UpdateAccountState implements UpdateAccountState {
  const factory _UpdateAccountState(
      {required Username username,
      required EmailAddress emailAddress,
      File? image,
      required bool showErrorMessages,
      required bool isSaving,
      required Option<Either<AccountFailure, Account>>
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
  _$UpdateAccountStateCopyWith<_UpdateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
