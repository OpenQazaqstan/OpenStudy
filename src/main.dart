import 'package:flutter/material.dart';
import 'colors.dart' as EduColors;

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
                      TextFormField(
                        style: TextStyle(
                            color: EduColors.foreground, fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20.0),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'E-mail',
                          hintText: 'E-mail',
                          hintStyle: TextStyle(
                              color: EduColors.secondForeground, fontSize: 14),
                          labelStyle: TextStyle(
                              color: EduColors.secondForeground, fontSize: 14),
                          fillColor: EduColors.secondBackground,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                                color: EduColors.primary, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: EduColors.background,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                              color: EduColors.foreground, fontSize: 14),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Пароль',
                            hintText: 'Пароль',
                            hintStyle: TextStyle(
                                color: EduColors.secondForeground,
                                fontSize: 14),
                            labelStyle:
                                TextStyle(color: EduColors.secondForeground),
                            fillColor: EduColors.secondBackground,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                  color: EduColors.primary, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                color: EduColors.background,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
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
