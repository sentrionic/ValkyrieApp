import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';

abstract class IDMRepository {
  Future<Either<DMChannelFailure, List<DMChannel>>> getUserDMs();

  Future<Either<DMChannelFailure, DMChannel>> getOrCreateDirectMessage(
    String userId,
  );

  Future<Either<DMChannelFailure, Unit>> closeDM(
    String channelId,
  );
}
