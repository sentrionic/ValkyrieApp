import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';

import 'package:valkyrie_app/infrastructure/messages/message_dto.dart';

@LazySingleton(as: IMessageRepository)
class MessageRepository extends IMessageRepository {
  final Dio _dio;

  MessageRepository(this._dio);

  @override
  Future<Either<MessageFailure, List<Message>>> getChannelMessages(
    String channelId, [
    String? cursor,
  ]) async {
    try {
      final cursorParam = cursor != null ? "?cursor=$cursor" : "";
      final response = await _dio.get('/messages/$channelId$cursorParam');

      final results = jsonDecode(response.data);
      final List<Message> list = [];
      results.forEach((c) => list.add(MessageDto.fromMap(c).toDomain()));
      return right(list);
    } on DioError catch (err) {
      print(err);
      return left(const MessageFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MessageFailure.unexpected());
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> createMessage(
    String channelId,
    String text,
  ) async {
    try {
      final formData = FormData.fromMap({"text": text});
      await _dio.post(
        '/messages/$channelId',
        data: formData,
      );
      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(MessageFailure.badRequest(errors[0].message));
        }
      }
      return left(const MessageFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MessageFailure.unexpected());
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> uploadImage(
    String channelId,
    String path,
  ) async {
    try {
      final formData = FormData();
      formData.files.add(
        MapEntry(
          "file",
          await MultipartFile.fromFile(
            path,
            contentType: MediaType("image", "jpeg"),
          ),
        ),
      );
      await _dio.post(
        '/messages/$channelId',
        data: formData,
      );
      return right(unit);
    } on DioError catch (err) {
      print(err.response);
      if (err.response?.statusCode == 400) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(MessageFailure.badRequest(errors[0].message));
        }
      }
      return left(const MessageFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MessageFailure.unexpected());
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> editMessage(
    String messageId,
    String text,
  ) async {
    try {
      await _dio.put(
        '/messages/$messageId',
        data: {"text": text},
      );
      return right(unit);
    } on DioError catch (err) {
      print(err.response);
      if (err.response?.statusCode == 400) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(MessageFailure.badRequest(errors[0].message));
        }
      }
      return left(const MessageFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MessageFailure.unexpected());
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> deleteMessage(String messageId) async {
    try {
      await _dio.delete('/messages/$messageId');
      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const MessageFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MessageFailure.unexpected());
    }
  }
}
