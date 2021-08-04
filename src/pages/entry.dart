import "package:flutter/material.dart";

import "../colors.dart" as EduColors;
import '../components/input.dart' as Input;

class Slideshow extends StatefulWidget{
  State<Slideshow> createState(){
    return SlideshowState();
  }
}
class SlideshowState extends State<Slideshow> with SingleTickerProviderStateMixin{
  
  AnimationController? _controller;
  Animation? _myAnimation;

  @override
  void initState(){
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds:4),
      );
      _myAnimation = Tween<double>(begin: 0,end:255).animate(_controller!);
    _controller!.forward();
  }

  @override
  void dispose(){
    super.dispose();
    _controller!.dispose();
  } 

  Widget build(BuildContext context){
    return AnimatedBuilder(animation: _myAnimation!,builder: (context,ch) =>
      Container(
        child:Text("Да какого вуя",style:
        TextStyle(color: Color.fromRGBO(_myAnimation!.value.toInt(), 1,0,3),
        fontSize: _myAnimation!.value.toInt())
        )
      )
    );
  }
}