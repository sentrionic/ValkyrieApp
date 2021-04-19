import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/common/widgets/widget_constants.dart';

class ChannelNotificationIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidgetConstants.pillWidth,
      height: 10,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
    );
  }
}
