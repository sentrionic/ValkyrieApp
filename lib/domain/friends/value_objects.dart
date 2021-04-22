import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/core/failures.dart';
import 'package:valkyrie_app/domain/core/value_objects.dart';
import 'package:valkyrie_app/domain/core/value_validators.dart';

class UID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UID(String input) {
    return UID._(
      validateUID(input),
    );
  }

  const UID._(this.value);
}
