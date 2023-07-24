import 'package:flutter/material.dart';

class IconGeneric extends StatelessWidget {
  final Function() onPressedCallback;
  final Color highlightColor;
  final EdgeInsets padding;
  final Widget icon;
  final double size;
  final Color color;

  const IconGeneric({
    super.key,
    required this.onPressedCallback,
    required this.highlightColor,
    required this.padding,
    required this.color,
    required this.icon,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      visualDensity: VisualDensity.compact,
      highlightColor: highlightColor,
      onPressed: onPressedCallback,
      padding: padding,
      iconSize: size,
      color: color,
      icon: icon,
    );
  }
}
