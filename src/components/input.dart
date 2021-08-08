import 'package:flutter/material.dart';
import '../shared/colors.dart' as edu_colors;

class Input extends StatefulWidget {
  Input(
      {Key? key,
      required this.contoller,
      this.placeHolder = '',
      this.obscureText = false,
      this.margin = const EdgeInsets.symmetric()})
      : super(key: key);

  final String placeHolder;
  final bool obscureText;
  final EdgeInsets margin;
  final TextEditingController contoller;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: widget.margin,
        child: TextFormField(
          controller: widget.contoller,
          obscureText: widget.obscureText,
          style: TextStyle(color: edu_colors.foreground, fontSize: 14),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: widget.placeHolder,
            hintText: widget.placeHolder,
            hintStyle:
                TextStyle(color: edu_colors.secondForeground, fontSize: 14),
            labelStyle:
                TextStyle(color: edu_colors.secondForeground, fontSize: 14),
            fillColor: edu_colors.secondBackground,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
              borderSide: BorderSide(color: edu_colors.primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
              borderSide: BorderSide(
                color: edu_colors.background,
                width: 1.0,
              ),
            ),
          ),
        ));
  }
}
