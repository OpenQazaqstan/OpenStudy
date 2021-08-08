import 'package:flutter/material.dart';

import '../shared/colors.dart' as edu_colors;
import '../components/input.dart';

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
        backgroundColor: edu_colors.background,
        appBar: AppBar(
          title: Text(''),
          elevation: 0, // no shadow
          backgroundColor: edu_colors.background,
          brightness: Brightness.dark,
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                Container(
                    width: 200, child: Image.asset('assets/images/logo.png')),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Input(
                          contoller: emailController,
                          placeHolder: 'E-mail',
                          obscureText: false),
                      Input(
                          contoller: loginController,
                          placeHolder: 'Пароль',
                          obscureText: true),
                      TextButton(
                        onPressed: () {
                          // to do
                        },
                        child: Text(
                          'Забыли пароль?',
                          style: TextStyle(
                              color: edu_colors.secondForeground, fontSize: 14),
                        ),
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
                          child: MaterialButton(
                            child: Text('Войти'),
                            color: edu_colors.primary,
                            padding: EdgeInsets.symmetric(vertical: 20),
                            textColor: edu_colors.foreground,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () => print('test'),
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
