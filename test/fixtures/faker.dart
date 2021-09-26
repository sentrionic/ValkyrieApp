import 'dart:math';

final _random = Random();
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
const _idNums = '1234567890';

int getRandomInt(int min, int max) => _random.nextInt(max - min) + min;

String getRandomString(int length) => String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => _chars.codeUnitAt(_random.nextInt(_chars.length)),
      ),
    );

String getRandomId() => String.fromCharCodes(
      Iterable.generate(
        20,
        (_) => _idNums.codeUnitAt(_random.nextInt(_idNums.length)),
      ),
    );

String getRandomName() => getRandomString(getRandomInt(6, 12));

String getRandomEmail() => "${getRandomName()}@example.com";

String getImageUrl() =>
    "https://gravatar.com/avatar/${getRandomId()}?d=identicon";
