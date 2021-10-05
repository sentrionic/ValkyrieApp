import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/infrastructure/messages/message_dto.dart';
import 'package:valkyrie_app/infrastructure/messages/message_repository.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';
import '../../fixtures/image_fixture.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late MessageRepository repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = MessageRepository(client);
  });

  group('GetChannelMessages', () {
    final data = fixture('message_list.json');
    final results = json.decode(data);
    final List<Message> messageList = [];
    results.forEach((m) => messageList.add(MessageDto.fromMap(m).toDomain()));
    final channelId = getRandomId();

    void setUpHttpSuccessList() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/messages/$channelId'),
        ),
      );
    }

    void setUpHttpGetFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/messages/$channelId', method: "GET"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the channel's messages",
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        repository.getChannelMessages(channelId);

        // assert
        verify(
          () => client.get(
            '/messages/$channelId',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of Messages when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        final result = await repository.getChannelMessages(channelId);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(messageList));
      },
    );

    test(
      'should return a MessageFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpGetFailure();

        // act
        final result = await repository.getChannelMessages(channelId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MessageFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.getChannelMessages(channelId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );
  });

  group("CreateMessage", () {
    final channelId = getRandomId();
    final text = getRandomString(12);

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 201,
          requestOptions: RequestOptions(path: '/messages/$channelId'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/messages/$channelId', method: "POST"),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: fixture('field_errors.json'),
            statusCode: 400,
            requestOptions:
                RequestOptions(path: '/messages/$channelId', method: "POST"),
          ),
          requestOptions:
              RequestOptions(path: '/messages/$channelId', method: "POST"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to create the message with the given text",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.createMessage(channelId, text);

        // assert
        verify(
          () => client.post(
            '/messages/$channelId',
            data: any(named: "data"),
          ),
        ).called(1);
      },
    );

    test(
      'should return the created channel when the response code is 201 (created)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.createMessage(channelId, text);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          unit,
        );
      },
    );

    test(
      'should return a MessageFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.createMessage(channelId, text);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MessageFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.createMessage(channelId, text);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a MessageFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.createMessage(channelId, text);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );
  });

  group("UploadImage", () {
    final channelId = getRandomId();
    final file = getFileFixture();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 201,
          requestOptions: RequestOptions(path: '/messages/$channelId'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/messages/$channelId', method: "POST"),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: fixture('field_errors.json'),
            statusCode: 400,
            requestOptions:
                RequestOptions(path: '/messages/$channelId', method: "POST"),
          ),
          requestOptions:
              RequestOptions(path: '/messages/$channelId', method: "POST"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.post(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to create the message with the given file path",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        await repository.uploadImage(channelId, file.path);

        // assert
        verify(
          () => client.post(
            '/messages/$channelId',
            data: any(named: "data"),
          ),
        ).called(1);
      },
    );

    test(
      'should return the created channel when the response code is 201 (created)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.uploadImage(channelId, file.path);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          unit,
        );
      },
    );

    test(
      'should return a MessageFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.uploadImage(channelId, file.path);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MessageFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.uploadImage(channelId, file.path);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a MessageFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.uploadImage(channelId, file.path);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );
  });

  group("EditMessage", () {
    final messageId = getRandomId();
    final text = getRandomString(12);

    void setUpHttpSuccess() {
      when(
        () => client.put(
          any(),
          data: {"text": text},
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/messages/$messageId'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.put(
          any(),
          data: {"text": text},
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/messages/$messageId', method: "PUT"),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.put(
          any(),
          data: {"text": text},
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 400,
            data: fixture("field_errors.json"),
            requestOptions:
                RequestOptions(path: '/messages/$messageId', method: "PUT"),
          ),
          requestOptions:
              RequestOptions(path: '/messages/$messageId', method: "PUT"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.put(
          any(),
          data: {"text": text},
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a PUT request to the network to edit the message with the given text",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.editMessage(messageId, text);

        // assert
        verify(
          () => client.put(
            '/messages/$messageId',
            data: {"text": text},
          ),
        ).called(1);
      },
    );

    test(
      'should return the created channel when the response code is 201 (created)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.editMessage(messageId, text);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          unit,
        );
      },
    );

    test(
      'should return a MessageFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.editMessage(messageId, text);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MessageFailure.badRequest when DioError is thrown',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.editMessage(messageId, text);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a MessageFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.editMessage(messageId, text);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );
  });

  group("DeleteMessage", () {
    final id = getRandomId();

    void setUpHttpDeleteSuccess() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/messages/$id'),
        ),
      );
    }

    void setUpHttpDeleteFailure() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/messages/$id'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.delete(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to delete the message with the given id",
      () async {
        // arrange
        setUpHttpDeleteSuccess();

        // act
        repository.deleteMessage(id);

        // assert
        verify(
          () => client.delete('/messages/$id'),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpDeleteSuccess();

        // act
        final result = await repository.deleteMessage(id);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return a MessageFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpDeleteFailure();

        // act
        final result = await repository.deleteMessage(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MessageFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.deleteMessage(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MessageFailure.unexpected()),
        );
      },
    );
  });
}
