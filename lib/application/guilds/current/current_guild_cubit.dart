import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// CurrentGuildCubit stores and retrieves the 'guildId' of the currently open [Guild]
@injectable
class CurrentGuildCubit extends Cubit<String> {
  CurrentGuildCubit() : super("");

  // Sets the guildId of the currently open [Guild]
  void setGuildlId(String guildId) => emit(guildId);

  // Sets the guildId to an empty string
  void resetGuildId() => emit("");
}
