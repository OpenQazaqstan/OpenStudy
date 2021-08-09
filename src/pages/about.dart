import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../shared/colors.dart' as edu_colors;
import '../shared/styles.dart' as styles;

class About extends StatefulWidget {
  @override
  AboutState createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: edu_colors.backgroundGradient),
      child: Padding(
        padding: EdgeInsets.only(
          left: 28,
          top: 60,
          right: 28,
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  FlutterRemix.arrow_left_line,
                  size: 24,
                  color: edu_colors.foreground,
                ),
                Icon(
                  FlutterRemix.share_forward_box_line,
                  size: 20,
                  color: edu_colors.foreground,
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Japanese',
                style: styles.headerText,
              )),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'There are two truths about Japanese culture. First, it is celebrated the world over — film, food, literature, music, art, all of it. Second, to best appreciate it, you must first learn Japanese! With OpenStudy, you’ll start speaking Japanese and reading its three writing systems (yes, even Kanji). Learn Japanese and confidently order tonkotsu at a 10-seat side-alley Tokyo ramen shop or cheerfully check-in to a Hokkaido onsen. Never read awkwardly translated manga or watch dubbed anime again. You may already be curious about the culture behind the world’s third largest economy, sushi, haikus, karate, Zen, and Pokemon. Once you start learning Japanese, you’ll realize that’s just the beginning',
                style: styles.secondaryText,
              )),
        ]),
      ),
    ));
  }
}
