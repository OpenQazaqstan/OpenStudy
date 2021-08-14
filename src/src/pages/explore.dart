import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../shared/colors.dart' as edu_colors;
import '../shared/styles.dart' as styles;

import '../components/tag.dart';
import '../components/card.dart';

import 'about.dart';

class Explore extends StatefulWidget {
  @override
  ExploreState createState() => ExploreState();
}

class ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: edu_colors.backgroundGradient),
      child: Padding(
        padding: EdgeInsets.only(left: 28, top: 60),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Все курсы',
                      style: styles.headerText,
                    )),
                Icon(
                  FlutterRemix.search_line,
                  size: 20,
                  color: edu_colors.foreground,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 28),
            child: Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    alignment: WrapAlignment.end,
                    spacing: 10, // set spacing here
                    children: <Widget>[
                      Tag(text: 'Math', active: true),
                      Tag(text: 'Programming'),
                      Tag(text: 'Biology'),
                      Tag(text: 'Languages'),
                      SizedBox(width: 28)
                    ],
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 28, top: 20),
            child: Column(
              children: <Widget>[
                CourseCard(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => About()),
                    );
                  },
                ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
