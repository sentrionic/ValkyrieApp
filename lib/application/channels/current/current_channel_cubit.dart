import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

/// CurrentGuildCubit stores and retrieves the 'channelId' of the currently open [Channel]
@injectable
class CurrentChannelCubit extends Cubit<String> {
  CurrentChannelCubit() : super("");

  // Sets the channelId of the currently open [Channel]
  void setChannelId(String channelId) => emit(channelId);

  // Sets the channelId to an empty string
  void resetChannelId() => emit("");
}
