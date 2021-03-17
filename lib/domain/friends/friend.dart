import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend.freezed.dart';

@freezed
class Friend with _$Friend {
  const Friend._();

  const factory Friend({
    required String id,
    required String username,
    required String image,
    required bool isOnline,
  }) = _Friend;
}
