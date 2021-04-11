import 'dart:io';

import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.length >= 3 && input.length <= 50) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<List<T>>, List<T>> validateMaxGuildLength<T>(
  List<T> input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.tooManyGuilds(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<File>, File> validateMaxFileSize(
  File input,
  int maxSize,
) {
  if (input.lengthSync() <= maxSize) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingSize(failedValue: input, max: maxSize),
    );
  }
}

Either<ValueFailure<String>, String> validateHexColor(
  String input,
) {
  const hexRegex = r"""/^#[0-9a-f]{3}(?:[0-9a-f]{3})?$/i""";
  if (RegExp(hexRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidColor(failedValue: input));
  }
}
