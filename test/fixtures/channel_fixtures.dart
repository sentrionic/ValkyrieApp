import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';

import 'faker.dart';

Channel getChannelFixture() {
  return Channel(
    id: getRandomId(),
    name: ChannelName(getRandomName()),
    isPublic: true,
    hasNotification: false,
  );
}

List<Channel> getChannelListFixture() {
  final List<Channel> list = [];

  for (var i = 0; i < 5; i++) {
    list.add(getChannelFixture());
  }

  return list;
}
