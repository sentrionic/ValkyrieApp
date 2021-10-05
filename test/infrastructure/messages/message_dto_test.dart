import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';
import 'package:valkyrie_app/infrastructure/messages/message_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tMessageDto = MessageDto(
    id: "1440949678773374976",
    createdAt: "2021-09-23T08:02:29.627925Z",
    updatedAt: "2021-09-23T08:02:29.627925Z",
    text: "This is a test",
    user: MemberDto(
      id: "1440949629427388416",
      username: "Sen",
      image:
          "https://harmony-cdn.s3.eu-central-1.amazonaws.com/files/valkyrie/users/1440949629427388416/1440950088254885888.jpeg",
      isOnline: false,
      isFriend: false,
    ),
  );

  final tMessage = Message(
    id: "1440949678773374976",
    createdAt: "2021-09-23T08:02:29.627925Z",
    updatedAt: "2021-09-23T08:02:29.627925Z",
    text: MessageText("This is a test"),
    user: const Member(
      id: "1440949629427388416",
      username: "Sen",
      image:
          "https://harmony-cdn.s3.eu-central-1.amazonaws.com/files/valkyrie/users/1440949629427388416/1440950088254885888.jpeg",
      isOnline: false,
      isFriend: false,
    ),
  );

  group('MessageDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('message.json'));

        // act
        final result = MessageDto.fromMap(jsonMap);

        // assert
        expect(result, tMessageDto);
      },
    );

    test(
      'should return a domain model from the MessageDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('message.json'));

        // act
        final result = MessageDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), tMessage);
      },
    );
  });

  const attachmentDto = AttachmentDto(
    filename: "test.png",
    url: "https://testurl.com/test.png",
    filetype: "image/png",
  );

  const attachment = Attachment(
    filename: "test.png",
    url: "https://testurl.com/test.png",
    filetype: "image/png",
  );

  group('AttachmentDto.fromMap', () {
    test(
      'should return a valid DTO when the JSON is valid',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('attachment.json'));

        // act
        final result = AttachmentDto.fromMap(jsonMap);

        // assert
        expect(result, attachmentDto);
      },
    );

    test(
      'should return a domain model from the AttachmentDto',
      () async {
        // arrange
        final jsonMap = json.decode(fixture('attachment.json'));

        // act
        final result = AttachmentDto.fromMap(jsonMap);

        // assert
        expect(result.toDomain(), attachment);
      },
    );
  });
}
