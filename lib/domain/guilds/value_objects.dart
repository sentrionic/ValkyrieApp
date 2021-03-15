import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/core/failures.dart';
import 'package:valkyrie_app/domain/core/value_objects.dart';
import 'package:valkyrie_app/domain/core/value_validators.dart';

class GuildName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 50;

  factory GuildName(String input) {
    return GuildName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const GuildName._(this.value);
}
