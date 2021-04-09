import 'dart:io';

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

class MessageImage extends ValueObject<File> {
  @override
  final Either<ValueFailure<File>, File> value;

  // Check if image size is less than 5MB = 5242880 Bytes
  factory MessageImage(File input) {
    return MessageImage._(
      validateMaxFileSize(input, 5242880),
    );
  }

  const MessageImage._(this.value);
}
