import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/dms/dm_user.dart';
import 'package:valkyrie_app/domain/member/member.dart';

import 'faker.dart';

Account getAccountFixture() {
  return Account(
    id: getRandomId(),
    username: Username(getRandomName()),
    email: EmailAddress(getRandomEmail()),
    image: getImageUrl(),
  );
}

Member getMemberFixture() {
  return Member(
    id: getRandomId(),
    username: getRandomName(),
    image: getImageUrl(),
    isOnline: true,
    isFriend: false,
  );
}

DMUser getDMUserFixture() {
  return DMUser(
    id: getRandomId(),
    username: getRandomName(),
    image: getImageUrl(),
    isOnline: true,
    isFriend: false,
  );
}
