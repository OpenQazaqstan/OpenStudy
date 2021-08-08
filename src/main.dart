import 'package:flutter/material.dart';

// import 'pages/entry.dart' as Entry;
import 'pages/login.dart' as login_page;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_page.Login(),
    );
  }
}
