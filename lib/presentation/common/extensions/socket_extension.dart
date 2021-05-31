import 'dart:convert';

import 'package:web_socket_channel/io.dart';

extension SocketX on IOWebSocketChannel {
  void emit(String action, {String? room, String? message}) {
    final data =
        jsonEncode({"action": action, "room": room, "message": message});
    sink.add(data);
  }
}
