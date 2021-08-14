import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../shared/colors.dart' as edu_colors;
import '../shared/styles.dart' as styles;

import '../components/raised_gradient_button.dart';
import '../components/button.dart';

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
                'Японский',
                style: styles.headerText,
              )),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'О японской культуре есть две истины. Во-первых, это отмечается во всем мире - фильмы, еда, литература, музыка, искусство и все такое. Во-вторых, чтобы лучше понять это, вы должны сначала выучить японский язык! С OpenStudy вы начнете говорить по-японски и читать его три системы письма (да, даже кандзи). Изучайте японский язык и с уверенностью заказывайте тонкоцу в магазине рамэн на переулке на 10 человек или с радостью зарегистрируйтесь в онсэн Хоккайдо. Никогда не читайте мангу с неудобным переводом и не смотрите дублированное аниме снова. Возможно, вам уже интересно узнать о культуре суши, хайку, карате, дзен и покемонов, стоящей за третьей по величине экономикой мира. Как только вы начнете изучать японский язык, вы поймете, что это только начало',
                style: styles.secondaryText,
              )),
          Spacer(),
          Row(
            children: [
              Button(
                color: edu_colors.secondBackground,
                padding: EdgeInsets.symmetric(vertical: 16),
                borderRadius: BorderRadius.circular(9),
                width: 57,
                child: Icon(
                  FlutterRemix.bookmark_line,
                  size: 24,
                  color: edu_colors.foreground,
                ),
                onPressed: () {
                  // to do
                },
              ),
              SizedBox(width: 10),
              Expanded(
                child: RaisedGradientButton(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Начать этот курс'),
                          Icon(
                            FlutterRemix.arrow_drop_right_line,
                            size: 24,
                            color: edu_colors.background,
                          )
                        ],
                      )),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  borderRadius: BorderRadius.circular(9),
                  gradient: edu_colors.primaryGradient,
                  onPressed: () {
                    // todo
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 40),
        ]),
      ),
    ));
  }
}
