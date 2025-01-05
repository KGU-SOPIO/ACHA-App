import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.height,
    required this.margin,
    required this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.border,
    required this.text,
    required this.textStyle
  });

  final double height;
  final EdgeInsets margin;
  final VoidCallback onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final BorderSide border;
  final String text;
  final TextStyle textStyle;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          side: border
        ),
        child: Text(text, style: textStyle)
      )
    );
  }
}