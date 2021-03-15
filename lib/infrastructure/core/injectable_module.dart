import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as fss;
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @Named("BaseUrl")
  String get baseUrl => "https://api.valkyrieapp.xyz/api";

  @lazySingleton
  fss.FlutterSecureStorage get storage => const fss.FlutterSecureStorage();

  @lazySingleton
  Dio dio(@Named("BaseUrl") String url) {
    final dio = Dio(
      BaseOptions(baseUrl: url, responseType: ResponseType.plain),
    );

    dio.interceptors.add(InterceptorsWrapper(onRequest: (options) async {
      dio.interceptors.requestLock.lock();
      final cookie = await storage.read(key: "cookie");
      if (cookie != null) options.headers["cookie"] = cookie;
      dio.interceptors.requestLock.unlock();
      return options; // continue
    }));

    return dio;
  }
}
