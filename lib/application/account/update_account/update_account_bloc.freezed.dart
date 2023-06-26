// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    TResult? Function(String email)? emailChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function()? saved,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_Saved value)? saved,
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
      _$UpdateAccountEventCopyWithImpl<$Res, UpdateAccountEvent>;
}

/// @nodoc
class _$UpdateAccountEventCopyWithImpl<$Res, $Val extends UpdateAccountEvent>
    implements $UpdateAccountEventCopyWith<$Res> {
  _$UpdateAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
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
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function(String email)? emailChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function()? saved,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_Saved value)? saved,
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

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsernameChangedCopyWith<$Res> {
  factory _$$_UsernameChangedCopyWith(
          _$_UsernameChanged value, $Res Function(_$_UsernameChanged) then) =
      __$$_UsernameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$_UsernameChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res, _$_UsernameChanged>
    implements _$$_UsernameChangedCopyWith<$Res> {
  __$$_UsernameChangedCopyWithImpl(
      _$_UsernameChanged _value, $Res Function(_$_UsernameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$_UsernameChanged(
      null == username
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
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function(String email)? emailChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function()? saved,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_Saved value)? saved,
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

  String get username;
  @JsonKey(ignore: true)
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageChangedCopyWith<$Res> {
  factory _$$_ImageChangedCopyWith(
          _$_ImageChanged value, $Res Function(_$_ImageChanged) then) =
      __$$_ImageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$_ImageChangedCopyWithImpl<$Res>
    extends _$UpdateAccountEventCopyWithImpl<$Res, _$_ImageChanged>
    implements _$$_ImageChangedCopyWith<$Res> {
  __$$_ImageChangedCopyWithImpl(
      _$_ImageChanged _value, $Res Function(_$_ImageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_ImageChanged(
      null == image
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
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function(String email)? emailChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function()? saved,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_Saved value)? saved,
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

  File get image;
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
    extends _$UpdateAccountEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
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
    TResult? Function(String email)? emailChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function()? saved,
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
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_Saved value)? saved,
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
      _$UpdateAccountStateCopyWithImpl<$Res, UpdateAccountState>;
  @useResult
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      File? image,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<AccountFailure, Account>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$UpdateAccountStateCopyWithImpl<$Res, $Val extends UpdateAccountState>
    implements $UpdateAccountStateCopyWith<$Res> {
  _$UpdateAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? emailAddress = null,
    Object? image = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccountFailure, Account>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateAccountStateCopyWith<$Res>
    implements $UpdateAccountStateCopyWith<$Res> {
  factory _$$_UpdateAccountStateCopyWith(_$_UpdateAccountState value,
          $Res Function(_$_UpdateAccountState) then) =
      __$$_UpdateAccountStateCopyWithImpl<$Res>;
  @override
  @useResult
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
    extends _$UpdateAccountStateCopyWithImpl<$Res, _$_UpdateAccountState>
    implements _$$_UpdateAccountStateCopyWith<$Res> {
  __$$_UpdateAccountStateCopyWithImpl(
      _$_UpdateAccountState _value, $Res Function(_$_UpdateAccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? emailAddress = null,
    Object? image = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_UpdateAccountState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
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
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, emailAddress, image,
      showErrorMessages, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  Username get username;
  @override
  EmailAddress get emailAddress;
  @override
  File? get image;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  Option<Either<AccountFailure, Account>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountStateCopyWith<_$_UpdateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
