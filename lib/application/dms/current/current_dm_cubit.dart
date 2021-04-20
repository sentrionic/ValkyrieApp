import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentDMCubit extends Cubit<String> {
  CurrentDMCubit() : super("");

  void setDMChannel(String channelId) => emit(channelId);
  void resetChannelId() => emit("");
}
