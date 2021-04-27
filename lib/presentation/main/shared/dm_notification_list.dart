import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/notifications/dm_notifications_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/presentation/main/shared/dm_notification_item.dart';

class DMNotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DMNotificationsCubit, List<DMNotification>>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 5),
          itemBuilder: (context, index) {
            return DMNotificationItem(
              notification: state[index],
            );
          },
          itemCount: state.length,
        );
      },
    );
  }
}
