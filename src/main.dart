import 'package:flutter/material.dart';

import 'pages/entry.dart' as Entry;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Entry.Slideshow(),
    );
  }
}
