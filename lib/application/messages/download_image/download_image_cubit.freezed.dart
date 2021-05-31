// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadImageStateTearOff {
  const _$DownloadImageStateTearOff();

  _DownloadImageState call(
      {required bool showErrorMessages,
      required bool isDownloading,
      required int progress,
      required Option<Either<MessageFailure, Unit>>
          downloadFailureOrSuccessOption}) {
    return _DownloadImageState(
      showErrorMessages: showErrorMessages,
      isDownloading: isDownloading,
      progress: progress,
      downloadFailureOrSuccessOption: downloadFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $DownloadImageState = _$DownloadImageStateTearOff();

/// @nodoc
mixin _$DownloadImageState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isDownloading => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  Option<Either<MessageFailure, Unit>> get downloadFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadImageStateCopyWith<DownloadImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadImageStateCopyWith<$Res> {
  factory $DownloadImageStateCopyWith(
          DownloadImageState value, $Res Function(DownloadImageState) then) =
      _$DownloadImageStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isDownloading,
      int progress,
      Option<Either<MessageFailure, Unit>> downloadFailureOrSuccessOption});
}

/// @nodoc
class _$DownloadImageStateCopyWithImpl<$Res>
    implements $DownloadImageStateCopyWith<$Res> {
  _$DownloadImageStateCopyWithImpl(this._value, this._then);

  final DownloadImageState _value;
  // ignore: unused_field
  final $Res Function(DownloadImageState) _then;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? isDownloading = freezed,
    Object? progress = freezed,
    Object? downloadFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloading: isDownloading == freezed
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      downloadFailureOrSuccessOption: downloadFailureOrSuccessOption == freezed
          ? _value.downloadFailureOrSuccessOption
          : downloadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadImageStateCopyWith<$Res>
    implements $DownloadImageStateCopyWith<$Res> {
  factory _$DownloadImageStateCopyWith(
          _DownloadImageState value, $Res Function(_DownloadImageState) then) =
      __$DownloadImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isDownloading,
      int progress,
      Option<Either<MessageFailure, Unit>> downloadFailureOrSuccessOption});
}

/// @nodoc
class __$DownloadImageStateCopyWithImpl<$Res>
    extends _$DownloadImageStateCopyWithImpl<$Res>
    implements _$DownloadImageStateCopyWith<$Res> {
  __$DownloadImageStateCopyWithImpl(
      _DownloadImageState _value, $Res Function(_DownloadImageState) _then)
      : super(_value, (v) => _then(v as _DownloadImageState));

  @override
  _DownloadImageState get _value => super._value as _DownloadImageState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? isDownloading = freezed,
    Object? progress = freezed,
    Object? downloadFailureOrSuccessOption = freezed,
  }) {
    return _then(_DownloadImageState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloading: isDownloading == freezed
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      downloadFailureOrSuccessOption: downloadFailureOrSuccessOption == freezed
          ? _value.downloadFailureOrSuccessOption
          : downloadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_DownloadImageState implements _DownloadImageState {
  const _$_DownloadImageState(
      {required this.showErrorMessages,
      required this.isDownloading,
      required this.progress,
      required this.downloadFailureOrSuccessOption});

  @override
  final bool showErrorMessages;
  @override
  final bool isDownloading;
  @override
  final int progress;
  @override
  final Option<Either<MessageFailure, Unit>> downloadFailureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadImageState(showErrorMessages: $showErrorMessages, isDownloading: $isDownloading, progress: $progress, downloadFailureOrSuccessOption: $downloadFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadImageState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isDownloading, isDownloading) ||
                const DeepCollectionEquality()
                    .equals(other.isDownloading, isDownloading)) &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)) &&
            (identical(other.downloadFailureOrSuccessOption,
                    downloadFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.downloadFailureOrSuccessOption,
                    downloadFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isDownloading) ^
      const DeepCollectionEquality().hash(progress) ^
      const DeepCollectionEquality().hash(downloadFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$DownloadImageStateCopyWith<_DownloadImageState> get copyWith =>
      __$DownloadImageStateCopyWithImpl<_DownloadImageState>(this, _$identity);
}

abstract class _DownloadImageState implements DownloadImageState {
  const factory _DownloadImageState(
      {required bool showErrorMessages,
      required bool isDownloading,
      required int progress,
      required Option<Either<MessageFailure, Unit>>
          downloadFailureOrSuccessOption}) = _$_DownloadImageState;

  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isDownloading => throw _privateConstructorUsedError;
  @override
  int get progress => throw _privateConstructorUsedError;
  @override
  Option<Either<MessageFailure, Unit>> get downloadFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadImageStateCopyWith<_DownloadImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
