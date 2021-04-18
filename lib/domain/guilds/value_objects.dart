import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/core/failures.dart';
import 'package:valkyrie_app/domain/core/value_objects.dart';
import 'package:valkyrie_app/domain/core/value_validators.dart';

class GuildName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory GuildName(String input) {
    return GuildName._(
      validateChannelName(input),
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

class InviteLink extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory InviteLink(String input) {
    return InviteLink._(
      validateStringNotEmpty(input),
    );
  }

  const InviteLink._(this.value);
}
