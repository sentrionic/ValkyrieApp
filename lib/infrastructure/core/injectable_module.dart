import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';

@module
abstract class InjectableModule {
  @Named("BaseUrl")
  String get baseUrl => "192.168.2.148:4000";

  @Named("HttpUrl")
  String get httpUrl => "http://$baseUrl/api";

  @Named("WSUrl")
  String get wsUrl => "ws://$baseUrl/ws";

  @lazySingleton
  Dio dio(@Named("HttpUrl") String url) {
    final dio = Dio(
      BaseOptions(baseUrl: url, responseType: ResponseType.plain),
    );

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          final cookie = getCookie();
          if (cookie != "null") options.headers["cookie"] = cookie;
          return handler.next(options); // continue
        },
      ),
    );

    return dio;
  }
}
