import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../shared/colors.dart' as edu_colors;
import '../shared/styles.dart' as styles;

import '../components/lessonComponents/quiz.dart';
import '../components/raised_gradient_button.dart';

List<Widget> pagesTest = [
  Paragraph(text: "Комбинаторика это раздел математики"),
  Paragraph(
      text:
          "Она решает целый ряд практических задач: например, нахождение перестановок, сочетаний"),
  Quiz(
      title: "Что такое комбинаторика?",
      options: [
        "Раздел математики",
        "Раздел русского языка",
        "Кол-во перестановок",
      ],
      group: 0)
];

class Lesson extends StatefulWidget {
  Lesson({required this.pages});

  final List<Widget>? pages;

  State<Lesson> createState() {
    return LessonState();
  }
}

class LessonState extends State<Lesson> {
  int? currentPage;

  @override
  void initState() {
    super.initState();
    this.currentPage = 0;
  }

  Widget topBar() {
    return Container(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FlutterRemix.arrow_left_line,
                  size: 24,
                  color: edu_colors.foreground,
                ),
                Center(child: Text("Math", style: styles.secondaryText))
              ],
            )));
  }

  Widget content() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [widget.pages![currentPage!]],
            )));
  }

  Widget build(buildContext) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: edu_colors.backgroundGradient),
            child: Column(
              children: [
                topBar(),
                content(),
                Container(
                  margin: EdgeInsets.only(bottom: 23),
                  child: RaisedGradientButton(
                    child: Text(
                      'Продолжить',
                      style: TextStyle(color: edu_colors.background),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    textColor: edu_colors.foreground,
                    borderRadius: BorderRadius.circular(9),
                    gradient: edu_colors.primaryGradient,
                    onPressed: () {
                      setState(() {
                        if (currentPage != null) currentPage = currentPage! + 1;
                        if (currentPage! >= widget.pages!.length) {
                          currentPage = widget.pages!.length - 1;
                        }
                      });
                    },
                  ),
                )
              ],
            )));
  }
}

class Paragraph extends StatelessWidget {
  Paragraph({required this.text});

  final String? text;

  Widget build(buildContext) {
    return Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Text(text!, style: styles.secondaryText));
  }
}
