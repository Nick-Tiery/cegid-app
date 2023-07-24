import 'package:flutter/material.dart';

class ButtonGeneric extends StatelessWidget {
  final Function() onPressedCallback;
  final TextStyle textStyle;
  final double borderRadius;
  final double padding;
  final double height;
  final double width;
  final String text;
  final Color color;

  const ButtonGeneric({
    super.key,
    required this.onPressedCallback,
    required this.borderRadius,
    required this.textStyle,
    required this.padding,
    required this.height,
    required this.color,
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: TextButton(
          onPressed: onPressedCallback,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
