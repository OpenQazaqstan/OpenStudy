import 'package:flutter/material.dart';

// import 'pages/entry.dart' as Entry;
import 'pages/lesson.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter'),
      home: Lesson(
        pages: pagesTest,
      ),
    );
  }
}
