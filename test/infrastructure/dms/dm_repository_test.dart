import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/infrastructure/dms/dm_channel_dto.dart';
import 'package:valkyrie_app/infrastructure/dms/dm_repository.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late DMRepository repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = DMRepository(client);
  });

  group('GetUserDMs', () {
    final data = fixture('dm_list.json');
    final results = json.decode(data);
    final List<DMChannel> channelList = [];
    results.forEach((c) => channelList.add(DMChannelDto.fromMap(c).toDomain()));

    void setUpHttpSuccess() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/channels/me/dm'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/channels/me/dm', method: "GET"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the user's DMs",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getUserDMs();

        // assert
        verify(
          () => client.get(
            '/channels/me/dm',
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
        final result = await repository.getUserDMs();

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(channelList));
      },
    );

    test(
      'should return a DMChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.getUserDMs();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const DMChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a DMChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.getUserDMs();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const DMChannelFailure.unexpected()),
        );
      },
    );
  });

  group("GetOrCreateDirectMessage", () {
    final data = fixture('dm.json');
    final result = json.decode(data);
    final tMockChannel = DMChannelDto.fromMap(result).toDomain();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions:
              RequestOptions(path: '/channels/${tMockChannel.user.id}/dm'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(
            path: '/channels/${tMockChannel.user.id}/dm',
            method: "POST",
          ),
        ),
      );
    }

    void setUpHttp404Failure() {
      when(
        () => client.post(
          any(),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 404,
            requestOptions: RequestOptions(
              path: '/channels/${tMockChannel.user.id}/dm',
              method: "POST",
            ),
          ),
          requestOptions: RequestOptions(
            path: '/channels/${tMockChannel.user.id}/dm',
            method: "POST",
          ),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.post(
          any(),
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to create a DM with the given user",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getOrCreateDirectMessage(tMockChannel.user.id);

        // assert
        verify(
          () => client.post(
            '/channels/${tMockChannel.user.id}/dm',
          ),
        ).called(1);
      },
    );

    test(
      'should return the created dm when the response code is 201 (created)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result =
            await repository.getOrCreateDirectMessage(tMockChannel.user.id);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(tMockChannel),
        );
      },
    );

    test(
      'should return a DMChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result =
            await repository.getOrCreateDirectMessage(tMockChannel.user.id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const DMChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a DMChannelFailure.notFound when DioError is thrown with status 404',
      () async {
        // arrange
        setUpHttp404Failure();

        // act
        final result =
            await repository.getOrCreateDirectMessage(tMockChannel.user.id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const DMChannelFailure.notFound()),
        );
      },
    );

    test(
      'should return a DMChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result =
            await repository.getOrCreateDirectMessage(tMockChannel.user.id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const DMChannelFailure.unexpected()),
        );
      },
    );
  });

  group("CloseDM", () {
    final id = getRandomId();

    void setUpHttpSuccess() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/channels/$id/dm'),
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
          requestOptions: RequestOptions(path: '/channels/$id/dm'),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.delete(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to close the channel with the given id",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.closeDM(id);

        // assert
        verify(
          () => client.delete('/channels/$id/dm'),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.closeDM(id);

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );

    test(
      'should return a DMChannelFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpDeleteFailure();

        // act
        final result = await repository.closeDM(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const DMChannelFailure.unexpected()),
        );
      },
    );

    test(
      'should return a DMChannelFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.closeDM(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const DMChannelFailure.unexpected()),
        );
      },
    );
  });
}
