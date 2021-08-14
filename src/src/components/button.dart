import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final Color color;

  final double? width;
  final double? height;

  final Color textColor;

  final EdgeInsets padding;
  final BorderRadius? borderRadius;

  final VoidCallback onPressed;

  const Button({
    Key? key,
    required this.child,
    required this.color,
    required this.onPressed,
    this.width,
    this.height,
    this.padding = const EdgeInsets.symmetric(),
    this.textColor = const Color(0xFFFFFFFF),
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(color: color, borderRadius: borderRadius),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
