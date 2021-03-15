import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/presentation/core/app_widget.dart';

import 'injection.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
