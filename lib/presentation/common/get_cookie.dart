import 'package:hive/hive.dart';
import 'package:valkyrie_app/infrastructure/core/hive_box_names.dart';

String getCookie() {
  return Hive.box(BoxNames.settingsBox).get(BoxKeys.cookieKey).toString();
}
