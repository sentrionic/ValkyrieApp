import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_failure.freezed.dart';

@freezed
class ChannelFailure with _$ChannelFailure {
  const factory ChannelFailure.unexpected() = _Unexpected;
}
