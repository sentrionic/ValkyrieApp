import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';

import 'faker.dart';

Guild getGuildFixture() {
  return Guild(
    id: getRandomId(),
    name: GuildName(getRandomName()),
    defaultChannel: getRandomId(),
    ownerId: getRandomId(),
    hasNotification: false,
  );
}

List<Guild> getGuildListFixture() {
  final List<Guild> list = [];

  for (var i = 0; i < 5; i++) {
    list.add(getGuildFixture());
  }

  return list;
}

BannedMember getBannedFixture() => BannedMember(
      id: getRandomId(),
      username: getRandomName(),
      image: getImageUrl(),
    );

List<BannedMember> getBannedListFixture() {
  final List<BannedMember> list = [];

  for (var i = 0; i < 5; i++) {
    list.add(getBannedFixture());
  }

  return list;
}
