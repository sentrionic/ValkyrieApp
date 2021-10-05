import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_dto.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_repository.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_request_dto.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late FriendRepository repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = FriendRepository(client);
  });

  group('GetFriends', () {
    final data = fixture('friend_list.json');
    final results = json.decode(data);
    final List<Friend> friendList = [];
    results.forEach((c) => friendList.add(FriendDto.fromMap(c).toDomain()));

    void setUpHttpSuccess() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/me/friends'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/account/me/friends', method: "GET"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the user's friends",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getFriends();

        // assert
        verify(
          () => client.get(
            '/account/me/friends',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of Friends when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.getFriends();

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(friendList));
      },
    );

    test(
      'should return a FriendFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.getFriends();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );

    test(
      'should return a FriendFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.getFriends();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );
  });

  group("SendFriendRequest", () {
    final id = getRandomId();
    final data = fixture('field_error.json');

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/$id/friend'),
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
            path: '/account/$id/friend',
            method: "POST",
          ),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.post(
          any(),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 400,
            data: data,
            requestOptions: RequestOptions(
              path: '/account/$id/friend',
              method: "POST",
            ),
          ),
          requestOptions: RequestOptions(
            path: '/account/$id/friend',
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
              path: '/account/$id/friend',
              method: "POST",
            ),
          ),
          requestOptions: RequestOptions(
            path: '/account/$id/friend',
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
      "should perform a POST request to the network to send a friends request",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.sendFriendRequest(id);

        // assert
        verify(
          () => client.post(
            '/account/$id/friend',
          ),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.sendFriendRequest(id);

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
      'should return a FriendFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.sendFriendRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );

    test(
      'should return a FriendFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.sendFriendRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a FriendFailure.badRequest when DioError is thrown with status 404',
      () async {
        // arrange
        setUpHttp404Failure();

        // act
        final result = await repository.sendFriendRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.badRequest("No user with that ID found")),
        );
      },
    );

    test(
      'should return a FriendFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.sendFriendRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );
  });

  group("RemoveFriend", () {
    final id = getRandomId();
    final data = fixture('field_error.json');

    void setUpHttpSuccess() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/$id/friend'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenThrow(
        DioError(
          requestOptions: RequestOptions(
            path: '/account/$id/friend',
            method: "DELETE",
          ),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 400,
            data: data,
            requestOptions: RequestOptions(
              path: '/account/$id/friend',
              method: "DELETE",
            ),
          ),
          requestOptions: RequestOptions(
            path: '/account/$id/friend',
            method: "DELETE",
          ),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(
        () => client.delete(
          any(),
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to remove the friend",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.removeFriend(id);

        // assert
        verify(
          () => client.delete(
            '/account/$id/friend',
          ),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.removeFriend(id);

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
      'should return a FriendFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.removeFriend(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );

    test(
      'should return a FriendFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.removeFriend(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a FriendFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.removeFriend(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );
  });

  group("AcceptRequest", () {
    final id = getRandomId();
    final data = fixture("field_error.json");

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/$id/friend/accept'),
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
            path: '/account/$id/friend/accept',
            method: "POST",
          ),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.post(
          any(),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 400,
            data: data,
            requestOptions: RequestOptions(
              path: '/account/$id/friend/accept',
              method: "POST",
            ),
          ),
          requestOptions: RequestOptions(
            path: '/account/$id/friend/accept',
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
      "should perform a POST request to the network to accept the friends request of the given id",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.acceptRequest(id);

        // assert
        verify(
          () => client.post(
            '/account/$id/friend/accept',
          ),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.acceptRequest(id);

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
      'should return a FriendFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.acceptRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );

    test(
      'should return a FriendFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.acceptRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a FriendFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.acceptRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );
  });

  group("DeclineRequest", () {
    final id = getRandomId();
    final data = fixture("field_error.json");

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/$id/friend/cancel'),
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
            path: '/account/$id/friend/cancel',
            method: "POST",
          ),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.post(
          any(),
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 400,
            data: data,
            requestOptions: RequestOptions(
              path: '/account/$id/friend/cancel',
              method: "POST",
            ),
          ),
          requestOptions: RequestOptions(
            path: '/account/$id/friend/cancel',
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
      "should perform a POST request to the network to decline the friends request of the given id",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.declineRequest(id);

        // assert
        verify(
          () => client.post(
            '/account/$id/friend/cancel',
          ),
        ).called(1);
      },
    );

    test(
      'should return unit when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.declineRequest(id);

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
      'should return a FriendFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.declineRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );

    test(
      'should return a FriendFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.declineRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a FriendFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.declineRequest(id);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );
  });

  group('GetPendingRequests', () {
    final data = fixture('request_list.json');
    final results = json.decode(data);
    final List<FriendRequest> requestList = [];
    results.forEach(
      (c) => requestList.add(
        FriendRequestDto.fromMap(c).toDomain(),
      ),
    );

    void setUpHttpSuccess() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/account/me/pending'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/account/me/pending', method: "GET"),
        ),
      );
    }

    void setUpHttpSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the user's friend requests",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.getPendingRequests();

        // assert
        verify(
          () => client.get(
            '/account/me/pending',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of FriendRequests when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await repository.getPendingRequests();

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(requestList));
      },
    );

    test(
      'should return a FriendFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.getPendingRequests();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );

    test(
      'should return a FriendFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpSocketException();

        // act
        final result = await repository.getPendingRequests();

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const FriendFailure.unexpected()),
        );
      },
    );
  });
}
