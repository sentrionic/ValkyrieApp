import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentGuildCubit extends Cubit<String> {
  CurrentGuildCubit() : super("");

  void setGuildlId(String guildId) => emit(guildId);
  void resetGuildId() => emit("");
}
