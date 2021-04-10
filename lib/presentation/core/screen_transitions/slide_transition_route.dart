import 'package:flutter/widgets.dart';

class SlideTransitionRoute extends PageRouteBuilder {
  final Widget page;
  SlideTransitionRoute({required this.page})
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
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
