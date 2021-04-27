import 'package:hive/hive.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/infrastructure/account/account_entity.dart';
import 'package:valkyrie_app/infrastructure/core/hive_box_names.dart';

Account getCurrentUser() {
  final accountBox = Hive.box<AccountEntity>(BoxNames.currentUser);
  return accountBox.get(BoxKeys.currentKey)!.toDomain();
}

bool doesCurrentUserExist() {
  final accountBox = Hive.box<AccountEntity>(BoxNames.currentUser);
  return accountBox.get(BoxKeys.currentKey) != null;
}
