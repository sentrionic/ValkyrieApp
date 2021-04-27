import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/notifications/notifications_cubit.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class DrawerMenuIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsCubit, int>(
      buildWhen: (p, c) => p != c,
      builder: (context, state) => Stack(
        children: [
          const Icon(
            Icons.menu,
            size: 28,
          ),
          if (state > 0)
            Positioned(
              right: -1,
              bottom: -1,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: ThemeColors.brandRed,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ThemeColors.inputBackground,
                  ),
                ),
                constraints: const BoxConstraints(
                  minWidth: 17,
                  minHeight: 14,
                ),
                child: Text(
                  '$state',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
        ],
      ),
    );
  }
}
