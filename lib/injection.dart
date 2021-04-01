import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async =>
    await $initGetIt(getIt, environment: env);
