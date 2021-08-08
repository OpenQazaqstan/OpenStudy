import 'package:flutter/material.dart';
import '../shared/colors.dart' as EduColors;

class Input extends StatefulWidget {
  Input(
      {Key? key,
      required this.contoller,
      this.placeHolder = '',
      this.obscureText = false,
      this.margin = const EdgeInsets.symmetric()})
      : super(key: key);

  final placeHolder;
  final obscureText;
  final margin;
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
          style: TextStyle(color: EduColors.foreground, fontSize: 14),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: '${widget.placeHolder}',
            hintText: '${widget.placeHolder}',
            hintStyle:
                TextStyle(color: EduColors.secondForeground, fontSize: 14),
            labelStyle:
                TextStyle(color: EduColors.secondForeground, fontSize: 14),
            fillColor: EduColors.secondBackground,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: EduColors.primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: EduColors.background,
                width: 1.0,
              ),
            ),
          ),
        ));
  }
}
