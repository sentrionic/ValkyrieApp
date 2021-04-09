import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/presentation/common/get_cookie.dart';

@module
abstract class InjectableModule {
  @Named("BaseUrl")
  String get baseUrl => "https://api.valkyrieapp.xyz";

  @lazySingleton
  Dio dio(@Named("BaseUrl") String url) {
    final dio = Dio(
      BaseOptions(baseUrl: "$url/api", responseType: ResponseType.plain),
    );

    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      dio.interceptors.requestLock.lock();
      final cookie = getCookie();
      if (cookie != "null") options.headers["cookie"] = cookie.toString();
      dio.interceptors.requestLock.unlock();
      return handler.next(options); // continue
    }));

    return dio;
  }
}
