import 'package:flutter/material.dart';

import '../../shared/colors.dart' as edu_colors;
import '../../shared/styles.dart' as styles;
import '../raised_gradient_button.dart';

class Quiz extends StatefulWidget {
  Quiz({
    required this.title,
    required this.options,
    required this.group,
  });

  final String? title;
  final List<String>? options;
  final int? group;

  State<Quiz> createState() {
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  List<bool>? optionValues;

  @override
  void initState() {
    super.initState();
    optionValues = List<bool>.filled(widget.options!.length, false);
  }

  Widget option(index, text) {
    return Row(
      children: [
        Checkbox(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
          value: optionValues![index],
          onChanged: (n) {
            setState(() {
              optionValues![index] = optionValues![index];
            });
          },
        ),
        Text(text, style: styles.secondaryText)
      ],
    );
  }

  Widget build(buildContext) {
    return Container(
        child: Column(
      children: [
        Row(children: [Text(widget.title!, style: styles.secondaryText)]),
        SizedBox(height: 10),
        for (int index = 0; index < widget.options!.length; ++index)
          option(index, widget.options![index]),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.only(bottom: 23),
          child: RaisedGradientButton(
            child: Text(
              'Проверить',
              style: TextStyle(color: edu_colors.background),
            ),
            padding: EdgeInsets.symmetric(vertical: 20),
            textColor: edu_colors.foreground,
            borderRadius: BorderRadius.circular(9),
            gradient: edu_colors.primaryGradient,
            onPressed: () {},
          ),
        )
      ],
    ));
  }
}
