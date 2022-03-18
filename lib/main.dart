import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/core/app_widget.dart';
import 'package:valkyrie_app/presentation/core/restart_widget.dart';
import 'package:valkyrie_app/setup_hive.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await setupHive();
  runApp(RestartWidget(child: AppWidget()));
}
