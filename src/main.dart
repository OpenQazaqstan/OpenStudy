import 'package:flutter/material.dart';
import 'colors.dart' as EduColors;
import 'input.dart' as Input;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final emailController = TextEditingController();
  final loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: EduColors.background,
        appBar: AppBar(
          title: Text(''),
          elevation: 0, // no shadow
          backgroundColor: EduColors.background,
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
                      Input.Input(
                          contoller: emailController,
                          placeHolder: "E-mail",
                          obscureText: false),
                      Input.Input(
                          contoller: loginController,
                          placeHolder: "Пароль",
                          obscureText: true),
                      TextButton(
                        onPressed: () {
                          // TODO: FORGOT PASSWORD SCREEN GOES HERE
                        },
                        child: Text(
                          'Забыли пароль?',
                          style: TextStyle(
                              color: EduColors.secondForeground, fontSize: 14),
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
                            color: EduColors.primary,
                            padding: EdgeInsets.symmetric(vertical: 20),
                            textColor: EduColors.foreground,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () => print('lol'),
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
