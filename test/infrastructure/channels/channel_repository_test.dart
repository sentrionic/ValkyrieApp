import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/infrastructure/channels/channel_dto.dart';
import 'package:valkyrie_app/infrastructure/channels/channel_repository.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late ChannelRepository repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = ChannelRepository(client);
  });

  group('GetGuildChannels', () {
    final guildId = getRandomId();
    final data = fixture('channel_list.json');
    final results = json.decode(data);
    final List<Channel> channelList = [];
    results.forEach((c) => channelList.add(ChannelDto.fromMap(c).toDomain()));

    void setUpHttpSuccess() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/channels/$guildId'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/channels/$guildId', method: "GET"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the guild's channels",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getGuildChannels(guildId);

        // assert
        verify(
          () => client.get(
            '/channels/$guildId',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of Channels when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.getGuildChannels(guildId);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(channelList));
      },
    );

    test(
      'should return a ChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.getGuildChannels(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a ChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.getGuildChannels(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );
  });

  group("CreateChannel", () {
    final guildId = getRandomId();
    final name = getRandomName();
    final data = fixture('channel.json');
    final result = json.decode(data);
    final tMockChannel = ChannelDto.fromMap(result).toDomain();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: {
            "name": name,
            "isPublic": true,
            "members": [],
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 201,
          requestOptions: RequestOptions(path: '/channels/$guildId'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: {
            "name": name,
            "isPublic": true,
            "members": [],
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/channels/$guildId', method: "POST"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.post(
          any(),
          data: {
            "name": name,
            "isPublic": true,
            "members": [],
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to create the channel with the given name",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.createChannel(guildId, name);

        // assert
        verify(
          () => client.post(
            '/channels/$guildId',
            data: {
              "name": name,
              "isPublic": true,
              "members": [],
            },
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
        final result = await repository.createChannel(guildId, name);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => Channel.empty()), equals(tMockChannel));
      },
    );

    test(
      'should return a ChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.createChannel(guildId, name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a ChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.createChannel(guildId, name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );
  });

  group("EditChannel", () {
    final channelId = getRandomId();
    final name = getRandomName();

    void setUpHttpSuccess() {
      when(
        () => client.put(
          any(),
          data: {
            "name": name,
            "isPublic": true,
            "members": [],
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/channels/$channelId'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.put(
          any(),
          data: {
            "name": name,
            "isPublic": true,
            "members": [],
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/channels/$channelId', method: "PUT"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.put(
          any(),
          data: {
            "name": name,
            "isPublic": true,
            "members": [],
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a PUT request to the network to update the channel with the given name",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.editChannel(channelId, name);

        // assert
        verify(
          () => client.put(
            '/channels/$channelId',
            data: {
              "name": name,
              "isPublic": true,
              "members": [],
            },
          ),
        ).called(1);
      },
    );

    test(
      'should return the updated channel when the response code is 200 (created)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.editChannel(channelId, name);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(unit),
        );
      },
    );

    test(
      'should return a ChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.editChannel(channelId, name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a ChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.editChannel(channelId, name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );
  });

  group("DeleteChannel", () {
    final id = getRandomId();

    void setUpHttpSuccess() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/channels/$id'),
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
          requestOptions: RequestOptions(path: '/channels/$id'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.delete(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to delete the channel with the given id",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.deleteChannel(id);

        // assert
        verify(
          () => client.delete('/channels/$id'),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.deleteChannel(id);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return a ChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpDeleteFailure();

        // act
        final result = await repository.deleteChannel(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a ChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.deleteChannel(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );
  });

  group('GetPrivateChannelMembers', () {
    final channelId = getRandomId();
    final data = fixture('member_ids.json');
    final results = json.decode(data);
    final List<String> memberList = [];
    results.forEach((m) => memberList.add(m));

    void setUpHttpSuccess() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/channels/$channelId/members'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions: RequestOptions(
            path: '/channels/$channelId/members',
            method: "GET",
          ),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the channels's private members",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getPrivateChannelMembers(channelId);

        // assert
        verify(
          () => client.get(
            '/channels/$channelId/members',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of ids when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.getPrivateChannelMembers(channelId);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(memberList));
      },
    );

    test(
      'should return a ChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.getPrivateChannelMembers(channelId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a ChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.getPrivateChannelMembers(channelId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const ChannelFailure.unexpected()),
        );
      },
    );
  });
}
