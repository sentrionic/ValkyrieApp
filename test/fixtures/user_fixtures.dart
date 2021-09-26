import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';

import 'faker.dart';

Account getAccountFixture() {
  return Account(
    id: getRandomId(),
    username: Username(getRandomName()),
    email: EmailAddress(getRandomEmail()),
    image: getImageUrl(),
  );
}
