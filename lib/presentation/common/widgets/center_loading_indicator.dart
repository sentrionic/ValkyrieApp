import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class CenterLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColoredBox(
        color: ThemeColors.dmBackground,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ),
    );
  }
}
