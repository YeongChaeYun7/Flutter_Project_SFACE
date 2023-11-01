import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValidateButton extends StatefulWidget {
  const ValidateButton({super.key, required this.text, required this.onPressed, required this.available});
  final String text;
  final void Function() onPressed;
  final bool available;

  @override
  State<ValidateButton> createState() => _ValidateButtonState();
}

class _ValidateButtonState extends State<ValidateButton>{
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10)
        ),
        backgroundColor: widget.available?Colors.blue:const Color(0xfff3f3f3),
        foregroundColor: Colors.black,
      ),
      onPressed: widget.available?() => widget.onPressed():null,
      child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "asset/Font/Pretendard-Regular.ttf",
            fontWeight: FontWeight.w500,
            letterSpacing: -0.36,
            color:widget.available?Colors.white:const Color(0xffCCCCCC),
      ),
      ),
    );
  }
}