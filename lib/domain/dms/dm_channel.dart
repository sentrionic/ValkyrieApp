import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/dms/dm_user.dart';

part 'dm_channel.freezed.dart';

@freezed
class DMChannel with _$DMChannel {
  const DMChannel._();

  const factory DMChannel({
    required String id,
    required DMUser user,
  }) = _DMChannel;
}

@freezed
class DMNotification with _$DMNotification {
  const DMNotification._();

  const factory DMNotification({
    required String id,
    required int count,
    required DMUser user,
  }) = _DMNotification;

  DMChannel toDMChannel() {
    return DMChannel(id: id, user: user);
  }
}
