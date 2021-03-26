import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/core/failures.dart';
import 'package:valkyrie_app/domain/core/value_objects.dart';
import 'package:valkyrie_app/domain/core/value_validators.dart';

class MessageText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MessageText(String input) {
    return MessageText._(
      validateMaxStringLength(input, 2000).flatMap(validateStringNotEmpty),
    );
  }

  const MessageText._(this.value);
}
