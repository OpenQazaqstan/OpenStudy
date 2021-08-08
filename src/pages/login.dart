import 'package:flutter/material.dart';

import '../shared/colors.dart' as edu_colors;
import '../shared/styles.dart' as styles;

import '../components/input.dart';
import '../components/raised_gradient_button.dart';

import 'explore.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final emailController = TextEditingController();
  final loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: edu_colors.backgroundGradient),
      child: Padding(
        padding: EdgeInsets.only(left: 28, right: 28, top: 100),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Добро пожаловать! 👋',
                  style: styles.headerText,
                )),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'OpenStudy это лучший способ узнать что-то новое',
                    style: styles.secondaryText,
                  )),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Input(
                      contoller: emailController,
                      placeHolder: 'Почта',
                      obscureText: false),
                  Input(
                      contoller: loginController,
                      placeHolder: 'Пароль',
                      obscureText: true,
                      margin: EdgeInsets.only(top: 16)),
                  TextButton(
                    onPressed: () {
                      // to do
                    },
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Забыли пароль?',
                          style: TextStyle(
                              color: edu_colors.secondForeground, fontSize: 14),
                        )),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 23),
                      child: RaisedGradientButton(
                        child: Text(
                          'Войти',
                          style: TextStyle(color: edu_colors.background),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        textColor: edu_colors.foreground,
                        borderRadius: BorderRadius.circular(9),
                        gradient: edu_colors.primaryGradient,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Explore()),
                          );
                        },
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    ));
  }
}
