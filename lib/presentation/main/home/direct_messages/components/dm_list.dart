import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/components/dm_list_builder.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/widgets/dm_list_header.dart';

class DirectMessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 11,
      child: Material(
        color: ThemeColors.dmBackground,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            DMListHeader(),
            Expanded(
              child: DMListBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
