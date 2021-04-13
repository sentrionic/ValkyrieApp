import 'dart:math';

import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/member_header.dart';

class MemberLoadingSkeleton extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MemberHeader(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 18,
            decoration: const BoxDecoration(
              color: ThemeColors.skeletonGray,
              borderRadius: BorderRadius.all(
                Radius.circular(40.0),
              ),
            ),
          ),
        ),
        for (var i = 0; i < 12; i++)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                Container(
                  height: 38,
                  width: 38,
                  decoration: const BoxDecoration(
                    color: ThemeColors.skeletonGray,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 18,
                  width: 50 + random.nextDouble() * 100,
                  decoration: const BoxDecoration(
                    color: ThemeColors.skeletonGray,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
