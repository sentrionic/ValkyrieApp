import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/infrastructure/core/hive_box_names.dart';

@module
abstract class InjectableModule {
  @Named("BaseUrl")
  String get baseUrl => "http://192.168.2.148:4000";

  @lazySingleton
  Dio dio(@Named("BaseUrl") String url) {
    final dio = Dio(
      BaseOptions(baseUrl: "$url/api", responseType: ResponseType.plain),
    );

    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      dio.interceptors.requestLock.lock();
      final cookie = Hive.box(BoxNames.settingsBox).get('cookie');
      if (cookie != null) options.headers["cookie"] = cookie.toString();
      dio.interceptors.requestLock.unlock();
      return handler.next(options); // continue
    }));

    return dio;
  }
}
