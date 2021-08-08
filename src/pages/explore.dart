import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../shared/colors.dart' as edu_colors;
import '../shared/styles.dart' as styles;

class Explore extends StatefulWidget {
  @override
  ExploreState createState() => ExploreState();
}

class ExploreState extends State<Explore> {
  final emailController = TextEditingController();
  final loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: edu_colors.backgroundGradient),
      child: Padding(
        padding: EdgeInsets.only(left: 28, right: 28, top: 60),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
          )
        ]),
      ),
    ));
  }
}
