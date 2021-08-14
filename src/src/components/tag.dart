import 'package:flutter/material.dart';
import '../shared/colors.dart' as edu_colors;

class Tag extends StatelessWidget {
  final String text;
  final bool active;

  const Tag({Key? key, required this.text, this.active = false})
      : super(key: key);

  Decoration _boxDecoration() {
    if (active) {
      return BoxDecoration(
          gradient: edu_colors.primaryGradient,
          borderRadius: BorderRadius.circular(9));
    }

    return BoxDecoration(
        color: edu_colors.secondBackground,
        borderRadius: BorderRadius.circular(9));
  }

  Color _textColor() {
    if (active) {
      return edu_colors.background;
    }

    return edu_colors.foreground;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: _boxDecoration(),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w500, color: _textColor()),
      ),
    );
  }
}
