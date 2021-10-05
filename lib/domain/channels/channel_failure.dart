import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_failure.freezed.dart';

@freezed
class ChannelFailure with _$ChannelFailure {
  const factory ChannelFailure.unexpected() = _Unexpected;
  const factory ChannelFailure.notFound() = _NotFound;
  const factory ChannelFailure.badRequest(String message) = _BadRequest;
}
