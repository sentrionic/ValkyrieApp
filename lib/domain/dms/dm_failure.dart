import 'package:freezed_annotation/freezed_annotation.dart';

part 'dm_failure.freezed.dart';

@freezed
abstract class DMChannelFailure with _$DMChannelFailure {
  const factory DMChannelFailure.unexpected() = _Unexpected;
}
