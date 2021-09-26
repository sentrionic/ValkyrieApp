import 'package:flutter/widgets.dart';

class FadeTransitionRoute extends PageRouteBuilder {
  final Widget page;
  FadeTransitionRoute({required this.page})
      : super(
          transitionDuration: const Duration(milliseconds: 225),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
