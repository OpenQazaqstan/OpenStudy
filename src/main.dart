import 'package:flutter/material.dart';

import 'colors.dart' as EduColors;

import 'pages/login.dart' as Login;
import 'pages/entry.dart' as Entry;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Entry.Slideshow(),
    );
  }
}
