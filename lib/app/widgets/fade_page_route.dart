import 'package:flutter/material.dart';

class FadePageRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  FadePageRoute({required this.page, required this.duration})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
        );

  @override
  get pageBuilder => (context, animation, secondaryAnimation) => page;

  @override
  get transitionsBuilder => (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      };

  @override
  Duration get transitionDuration => duration;
}
