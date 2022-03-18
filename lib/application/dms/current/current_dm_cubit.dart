import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// CurrentDMCubit stores and retrieves the 'channelId' of the currently open [DMChannel]
@injectable
class CurrentDMCubit extends Cubit<String> {
  CurrentDMCubit() : super("");

  // Sets the channelId of the currently open [DMChannel]
  void setDMChannel(String channelId) => emit(channelId);

  // Sets the channelId to an empty string
  void resetChannelId() => emit("");
}
