// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_DownloadImageStateCopyWith<$Res>
    implements $DownloadImageStateCopyWith<$Res> {
  factory _$$_DownloadImageStateCopyWith(_$_DownloadImageState value,
          $Res Function(_$_DownloadImageState) then) =
      __$$_DownloadImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isDownloading,
      int progress,
      Option<Either<MessageFailure, Unit>> downloadFailureOrSuccessOption});
}

/// @nodoc
class __$$_DownloadImageStateCopyWithImpl<$Res>
    extends _$DownloadImageStateCopyWithImpl<$Res>
    implements _$$_DownloadImageStateCopyWith<$Res> {
  __$$_DownloadImageStateCopyWithImpl(
      _$_DownloadImageState _value, $Res Function(_$_DownloadImageState) _then)
      : super(_value, (v) => _then(v as _$_DownloadImageState));

  @override
  _$_DownloadImageState get _value => super._value as _$_DownloadImageState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? isDownloading = freezed,
    Object? progress = freezed,
    Object? downloadFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_DownloadImageState(
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
        (other.runtimeType == runtimeType &&
            other is _$_DownloadImageState &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isDownloading, isDownloading) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(
                other.downloadFailureOrSuccessOption,
                downloadFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isDownloading),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(downloadFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadImageStateCopyWith<_$_DownloadImageState> get copyWith =>
      __$$_DownloadImageStateCopyWithImpl<_$_DownloadImageState>(
          this, _$identity);
}

abstract class _DownloadImageState implements DownloadImageState {
  const factory _DownloadImageState(
      {required final bool showErrorMessages,
      required final bool isDownloading,
      required final int progress,
      required final Option<Either<MessageFailure, Unit>>
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
  _$$_DownloadImageStateCopyWith<_$_DownloadImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
