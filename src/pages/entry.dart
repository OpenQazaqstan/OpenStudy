import 'package:flutter/material.dart';

class Slideshow extends StatefulWidget {
  @override
  State<Slideshow> createState() {
    return SlideshowState();
  }
}

class SlideshowState extends State<Slideshow>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _myAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    _myAnimation = Tween<double>(begin: 0, end: 255).animate(_controller!);
    _controller!.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _myAnimation!,
        builder: (context, ch) => Container(
            child: Text('text example',
                style: TextStyle(
                    color: Color.fromRGBO(_myAnimation!.value.toInt(), 1, 0, 3),
                    fontSize: _myAnimation!.value))));
  }
}
