import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/user/user.dart';

part 'dm_channel.freezed.dart';

@freezed
class DMChannel with _$DMChannel {
  const DMChannel._();

  const factory DMChannel({
    required String id,
    required User user,
  }) = _DMChannel;
}
