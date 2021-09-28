import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';

import 'faker.dart';
import 'user_fixtures.dart';

Message getMessageFixture() => Message(
      id: getRandomId(),
      text: MessageText(getRandomString(getRandomInt(4, 25))),
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
      user: getMemberFixture(),
    );

List<Message> getMessageListFixture() {
  final List<Message> list = [];

  for (var i = 0; i < 5; i++) {
    list.add(getMessageFixture());
  }

  return list;
}

List<Message> getBigMessageListFixture() {
  final List<Message> list = [];

  for (var i = 0; i < 35; i++) {
    list.add(getMessageFixture());
  }

  return list;
}
