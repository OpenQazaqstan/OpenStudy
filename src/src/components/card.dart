import 'package:flutter/material.dart';
import '../shared/colors.dart' as edu_colors;

class CourseCard extends StatelessWidget {
  final VoidCallback onPressed;

  const CourseCard({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
          color: edu_colors.secondBackground,
          borderRadius: BorderRadius.circular(9)),
      child: InkWell(
        onTap: onPressed,
      ),
    );
  }
}
