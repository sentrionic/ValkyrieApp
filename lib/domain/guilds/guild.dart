import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/core/failures.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

part 'guild.freezed.dart';

@freezed
class Guild with _$Guild {
  const Guild._();

  const factory Guild({
    required String id,
    required GuildName name,
    required String defaultChannel,
    required String ownerId,
    required bool hasNotification,
    String? icon,
  }) = _Guild;

  factory Guild.empty() => Guild(
        id: '',
        defaultChannel: '',
        name: GuildName(''),
        ownerId: '',
        hasNotification: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
