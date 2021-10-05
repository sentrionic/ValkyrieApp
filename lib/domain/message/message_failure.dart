import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_failure.freezed.dart';

@freezed
class MessageFailure with _$MessageFailure {
  const factory MessageFailure.unexpected() = _Unexpected;
  const factory MessageFailure.fileTooLarge() = _FileTooLarge;
  const factory MessageFailure.badRequest(String message) = _BadRequest;
}
