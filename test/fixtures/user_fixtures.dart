import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/dms/dm_user.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';
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

List<Member> getMemberListFixture() {
  final List<Member> list = [];

  for (var i = 0; i < 5; i++) {
    list.add(getMemberFixture());
  }

  return list;
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

Friend getFriendFixture() => Friend(
      id: getRandomId(),
      username: getRandomName(),
      image: getImageUrl(),
      isOnline: true,
    );

List<Friend> getFriendListFixture() {
  final List<Friend> list = [];

  for (var i = 0; i < 5; i++) {
    list.add(getFriendFixture());
  }

  return list;
}

FriendRequest getRequestFixture() => FriendRequest(
      id: getRandomId(),
      username: getRandomName(),
      image: getImageUrl(),
      type: RequestType.incoming,
    );

List<FriendRequest> getRequestListFixture() {
  final List<FriendRequest> list = [];

  for (var i = 0; i < 5; i++) {
    list.add(getRequestFixture());
  }

  return list;
}
