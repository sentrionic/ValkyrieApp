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

class Nickname extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Nickname(String input) {
    return Nickname._(
      validateUsername(input),
    );
  }

  const Nickname._(this.value);
}

class HexColor extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory HexColor(String input) {
    return HexColor._(
      validateHexColor(input),
    );
  }

  const HexColor._(this.value);
}
