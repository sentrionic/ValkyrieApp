import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/core/failures.dart';
import 'package:valkyrie_app/domain/core/value_objects.dart';
import 'package:valkyrie_app/domain/core/value_validators.dart';

class ChannelName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ChannelName(String input) {
    return ChannelName._(
      validateChannelName(input),
    );
  }

  const ChannelName._(this.value);
}
