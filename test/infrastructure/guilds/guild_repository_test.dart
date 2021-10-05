import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_dto.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_repository.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late GuildRepository repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = GuildRepository(client);
  });

  group('GetUserGuilds', () {
    final data = fixture('guild_list.json');
    final results = json.decode(data);
    final List<Guild> guildList = [];
    results.forEach((g) => guildList.add(GuildDto.fromMap(g).toDomain()));

    void setUpHttpSuccessList(String data) {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds'),
        ),
      );
    }

    void setUpHttpGetFailure(String path) {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: path, method: "GET"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the user's guilds",
      () async {
        // arrange
        setUpHttpSuccessList(data);

        // act
        repository.getUserGuilds();

        // assert
        verify(
          () => client.get(
            '/guilds',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of Guilds when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccessList(data);

        // act
        final result = await repository.getUserGuilds();

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(guildList));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpGetFailure('/guilds');

        // act
        final result = await repository.getUserGuilds();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.getUserGuilds();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });

  group("CreateGuild", () {
    const name = "Test Server";
    final data = fixture('guild.json');
    final result = json.decode(data);
    final tMockGuild = GuildDto.fromMap(result).toDomain();

    final errorsData = fixture('field_errors.json');
    final errorData = fixture('field_error.json');

    void setUpHttpSuccess201(String name, String data) {
      when(
        () => client.post(
          any(),
          data: {
            "name": name,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 201,
          requestOptions: RequestOptions(path: '/guilds/create'),
        ),
      );
    }

    void setUpHttpPostFailure(String path, String name) {
      when(
        () => client.post(
          any(),
          data: {
            "name": name,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: path, method: "POST"),
        ),
      );
    }

    void setUpHttp400Failure(String data) {
      when(
        () => client.post(
          any(),
          data: {
            "name": name,
          },
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: data,
            statusCode: 400,
            requestOptions:
                RequestOptions(path: '/guilds/create', method: "POST"),
          ),
          requestOptions:
              RequestOptions(path: '/guilds/create', method: "POST"),
        ),
      );
    }

    void setUpHttpPostSocketException(String name) {
      when(() => client.post(any(), data: {"name": name})).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to create the guild with the given name",
      () async {
        // arrange
        setUpHttpSuccess201(name, data);

        // act
        repository.createGuild(name);

        // assert
        verify(
          () => client.post(
            '/guilds/create',
            data: {
              "name": name,
            },
          ),
        ).called(1);
      },
    );

    test(
      'should return the created guild when the response code is 201 (created)',
      () async {
        // arrange
        setUpHttpSuccess201(name, data);

        // act
        final result = await repository.createGuild(name);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => Guild.empty()), equals(tMockGuild));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpPostFailure('/guilds/create', name);

        // act
        final result = await repository.createGuild(name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure.badRequest when DioError is thrown with status 400 and a single error',
      () async {
        // arrange
        setUpHttp400Failure(errorData);

        // act
        final result = await repository.createGuild(name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a GuildFailure.badRequest when DioError is thrown with status 400 and multiple errors',
      () async {
        // arrange
        setUpHttp400Failure(errorsData);

        // act
        final result = await repository.createGuild(name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpPostSocketException(name);

        // act
        final result = await repository.createGuild(name);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });

  group("DeleteGuild", () {
    final id = getRandomId();

    void setUpHttpDeleteSuccess() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$id/delete'),
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
          requestOptions: RequestOptions(path: '/guilds/$id/delete'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.delete(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to delete the guild with the given id",
      () async {
        // arrange
        setUpHttpDeleteSuccess();

        // act
        repository.deleteGuild(id);

        // assert
        verify(
          () => client.delete('/guilds/$id/delete'),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpDeleteSuccess();

        // act
        final result = await repository.deleteGuild(id);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpDeleteFailure();

        // act
        final result = await repository.deleteGuild(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.deleteGuild(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });

  group("EditGuild", () {
    final id = getRandomId();
    final name = getRandomName();

    void setUpHttpPutSuccess() {
      when(
        () => client.put(any(), data: any(named: "data")),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$id'),
        ),
      );
    }

    void setUpHttpPutFailure() {
      when(
        () => client.put(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/guilds/$id'),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.put(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 400,
            data: fixture('field_errors.json'),
            requestOptions: RequestOptions(path: '/guilds/$id'),
          ),
          requestOptions: RequestOptions(path: '/guilds/$id'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.put(
          any(),
          data: any(named: "data"),
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a PUT request to the network to update the guild with the given id",
      () async {
        // arrange
        setUpHttpPutSuccess();

        // act
        repository.editGuild(id, name, null, null);

        // assert
        verify(
          () => client.put(
            '/guilds/$id',
            data: any(named: "data"),
          ),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpPutSuccess();

        // act
        final result = await repository.editGuild(id, name, null, null);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpPutFailure();

        // act
        final result = await repository.editGuild(id, name, null, null);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.editGuild(id, name, null, null);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.editGuild(id, name, null, null);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });

  group('GetInviteLink', () {
    final id = getRandomId();
    final link = getRandomString(12);

    void setUpHttpSuccess() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: link,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$id/invite'),
        ),
      );
    }

    void setUpHttpGetFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$id/invite', method: "GET"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the guild invite",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getInviteLink(id);

        // assert
        verify(
          () => client.get(
            '/guilds/$id/invite',
          ),
        ).called(1);
      },
    );

    test(
      'should return a invite link when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.getInviteLink(id);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => ""), equals(link));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpGetFailure();

        // act
        final result = await repository.getInviteLink(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.getInviteLink(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });

  group("InvalidateInviteLink", () {
    final id = getRandomId();

    void setUpHttpDeleteSuccess() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$id/invite'),
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
          requestOptions: RequestOptions(path: '/guilds/$id/invite'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.delete(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to delete the guilds invites",
      () async {
        // arrange
        setUpHttpDeleteSuccess();

        // act
        repository.invalidateInviteLink(id);

        // assert
        verify(
          () => client.delete('/guilds/$id/invite'),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpDeleteSuccess();

        // act
        final result = await repository.invalidateInviteLink(id);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpDeleteFailure();

        // act
        final result = await repository.invalidateInviteLink(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.invalidateInviteLink(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });

  group("JoinGuild", () {
    final link = getRandomString(12);
    final data = fixture('guild.json');
    final result = json.decode(data);
    final tMockGuild = GuildDto.fromMap(result).toDomain();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: {
            "link": link,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 201,
          requestOptions: RequestOptions(path: '/guilds/join'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: {
            "link": link,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: '/guilds/join', method: "POST"),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.post(
          any(),
          data: {
            "link": link,
          },
        ),
      ).thenThrow(
        DioError(
          response: Response(
            data: fixture('field_error.json'),
            statusCode: 400,
            requestOptions:
                RequestOptions(path: '/guilds/join', method: "POST"),
          ),
          requestOptions: RequestOptions(path: '/guilds/join', method: "POST"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.post(any(), data: {"link": link})).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to join a guild with the given link",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.joinGuild(link);

        // assert
        verify(
          () => client.post(
            '/guilds/join',
            data: {
              "link": link,
            },
          ),
        ).called(1);
      },
    );

    test(
      'should return the joined guild when the response code is 200 (created)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.joinGuild(link);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => Guild.empty()), equals(tMockGuild));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.joinGuild(link);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure.badRequest when DioError is thrown',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.joinGuild(link);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.joinGuild(link);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });

  group("LeaveGuild", () {
    final id = getRandomId();

    void setUpHttpSuccess() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$id'),
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
          requestOptions: RequestOptions(path: '/guilds/$id'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.delete(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to leave the guild with the given id",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.leaveGuild(id);

        // assert
        verify(
          () => client.delete('/guilds/$id'),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.leaveGuild(id);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return a GuildFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpDeleteFailure();

        // act
        final result = await repository.leaveGuild(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );

    test(
      'should return a GuildFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.leaveGuild(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const GuildFailure.unexpected()),
        );
      },
    );
  });
}
