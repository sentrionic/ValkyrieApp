import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_appearance_dto.dart';
import 'package:valkyrie_app/infrastructure/members/banned_member_dto.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';
import 'package:valkyrie_app/infrastructure/members/member_repository.dart';

import '../../fixtures/faker.dart';
import '../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late MemberRepository repository;
  late MockDioClient client;

  setUp(() {
    client = MockDioClient();
    repository = MemberRepository(client);
  });

  group('GetGuildMembers', () {
    final data = fixture('member_list.json');
    final results = json.decode(data);
    final List<Member> memberList = [];
    results.forEach((m) => memberList.add(MemberDto.fromMap(m).toDomain()));
    final guildId = getRandomId();

    void setUpHttpSuccessList() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$guildId/members'),
        ),
      );
    }

    void setUpHttpGetFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/members', method: "GET"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the guild's members",
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        repository.getGuildMembers(guildId);

        // assert
        verify(
          () => client.get(
            '/guilds/$guildId/members',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of Members when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        final result = await repository.getGuildMembers(guildId);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(memberList));
      },
    );

    test(
      'should return a MemberFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpGetFailure();

        // act
        final result = await repository.getGuildMembers(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MemberFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.getGuildMembers(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );
  });

  group('GetGuildAppearance', () {
    final data = fixture('appearance.json');
    final result = json.decode(data);
    final appearance = GuildAppearanceDto.fromMap(result).toDomain();
    final guildId = getRandomId();

    void setUpHttpSuccessList() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$guildId/member'),
        ),
      );
    }

    void setUpHttpGetFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/member', method: "GET"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the member's appearance for the given guildId",
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        repository.getGuildAppearance(guildId);

        // assert
        verify(
          () => client.get(
            '/guilds/$guildId/member',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of Members when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        final result = await repository.getGuildAppearance(guildId);

        // assert
        expect(result.isRight(), true);
        expect(
          result.getOrElse(() => GuildAppearance.empty()),
          equals(appearance),
        );
      },
    );

    test(
      'should return a MemberFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpGetFailure();

        // act
        final result = await repository.getGuildAppearance(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MemberFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.getGuildAppearance(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );
  });

  group('ChangeAppearance', () {
    final guildId = getRandomId();
    final nickname = getRandomName();
    const color = "#fff";

    void setUpHttpSuccess() {
      when(
        () => client.put(
          any(),
          data: {
            "nickname": nickname,
            "color": color,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$guildId/member'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.put(
          any(),
          data: {
            "nickname": nickname,
            "color": color,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/member', method: "GET"),
        ),
      );
    }

    void setUpHttp400Failure() {
      when(
        () => client.put(
          any(),
          data: {
            "nickname": nickname,
            "color": color,
          },
        ),
      ).thenThrow(
        DioError(
          response: Response(
            statusCode: 400,
            data: fixture("field_error.json"),
            requestOptions:
                RequestOptions(path: '/guilds/$guildId/member', method: "GET"),
          ),
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/member', method: "GET"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(
        () => client.put(
          any(),
          data: {
            "nickname": nickname,
            "color": color,
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a PUT request to the network to change the member's appearance for the given guildId",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.changeAppearance(
          guildId: guildId,
          nickname: nickname,
          color: color,
        );

        // assert
        verify(
          () => client.put(
            '/guilds/$guildId/member',
            data: {
              "nickname": nickname,
              "color": color,
            },
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
        final result = await repository.changeAppearance(
          guildId: guildId,
          nickname: nickname,
          color: color,
        );

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
      'should return a MemberFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.changeAppearance(
          guildId: guildId,
          nickname: nickname,
          color: color,
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MemberFailure.badRequest when DioError is thrown with status 400',
      () async {
        // arrange
        setUpHttp400Failure();

        // act
        final result = await repository.changeAppearance(
          guildId: guildId,
          nickname: nickname,
          color: color,
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.badRequest("Message")),
        );
      },
    );

    test(
      'should return a MemberFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.changeAppearance(
          guildId: guildId,
          nickname: nickname,
          color: color,
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );
  });

  group('KickMember', () {
    final guildId = getRandomId();
    final memberId = getRandomId();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$guildId/kick'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/kick', method: "POST"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(
        () => client.post(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to kick the given member from the given guildId",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.kickMember(guildId, memberId);

        // assert
        verify(
          () => client.post(
            '/guilds/$guildId/kick',
            data: {
              "memberId": memberId,
            },
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
        final result = await repository.kickMember(guildId, memberId);

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
      'should return a MemberFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.kickMember(guildId, memberId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MemberFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.kickMember(guildId, memberId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );
  });

  group('BanMember', () {
    final guildId = getRandomId();
    final memberId = getRandomId();

    void setUpHttpSuccess() {
      when(
        () => client.post(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$guildId/bans'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.post(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/bans', method: "POST"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(
        () => client.post(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a POST request to the network to ban the given member from the given guildId",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.banMember(guildId, memberId);

        // assert
        verify(
          () => client.post(
            '/guilds/$guildId/bans',
            data: {
              "memberId": memberId,
            },
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
        final result = await repository.banMember(guildId, memberId);

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
      'should return a MemberFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.banMember(guildId, memberId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MemberFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.banMember(guildId, memberId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );
  });

  group('UnbanMember', () {
    final guildId = getRandomId();
    final memberId = getRandomId();

    void setUpHttpSuccess() {
      when(
        () => client.delete(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$guildId/bans'),
        ),
      );
    }

    void setUpHttpFailure() {
      when(
        () => client.delete(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/bans', method: "DELETE"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(
        () => client.delete(
          any(),
          data: {
            "memberId": memberId,
          },
        ),
      ).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a DELETE request to the network to unban the given member from the given guildId",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        repository.unbanMember(guildId, memberId);

        // assert
        verify(
          () => client.delete(
            '/guilds/$guildId/bans',
            data: {
              "memberId": memberId,
            },
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
        final result = await repository.unbanMember(guildId, memberId);

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
      'should return a MemberFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpFailure();

        // act
        final result = await repository.unbanMember(guildId, memberId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MemberFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.unbanMember(guildId, memberId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );
  });

  group('GetBanList', () {
    final data = fixture('ban_list.json');
    final results = json.decode(data);
    final List<BannedMember> memberList = [];
    results
        .forEach((m) => memberList.add(BannedMemberDto.fromMap(m).toDomain()));
    final guildId = getRandomId();

    void setUpHttpSuccessList() {
      when(() => client.get(any())).thenAnswer(
        (_) async => Response(
          data: data,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/guilds/$guildId/bans'),
        ),
      );
    }

    void setUpHttpGetFailure() {
      when(() => client.get(any())).thenThrow(
        DioError(
          requestOptions:
              RequestOptions(path: '/guilds/$guildId/bans', method: "GET"),
        ),
      );
    }

    void setUpHttpGetSocketException() {
      when(() => client.get(any())).thenThrow(
        const SocketException("Not connected"),
      );
    }

    test(
      "should perform a GET request to the network to get the guild's banned members",
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        repository.getBanList(guildId);

        // assert
        verify(
          () => client.get(
            '/guilds/$guildId/bans',
          ),
        ).called(1);
      },
    );

    test(
      'should return a list of Members when the response code is 200 (success)',
      () async {
        // arrange
        setUpHttpSuccessList();

        // act
        final result = await repository.getBanList(guildId);

        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), equals(memberList));
      },
    );

    test(
      'should return a MemberFailure when DioError is thrown',
      () async {
        // arrange
        setUpHttpGetFailure();

        // act
        final result = await repository.getBanList(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );

    test(
      'should return a MemberFailure when SocketException is thrown',
      () async {
        // arrange
        setUpHttpGetSocketException();

        // act
        final result = await repository.getBanList(guildId);

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(const MemberFailure.unexpected()),
        );
      },
    );
  });
}
