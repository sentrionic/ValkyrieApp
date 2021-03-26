import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentChannelCubit extends Cubit<String> {
  CurrentChannelCubit() : super("");

  void setChannelId(String channelId) => emit(channelId);
  void resetChannelId() => emit("");
}
