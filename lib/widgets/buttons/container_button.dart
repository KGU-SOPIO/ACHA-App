import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.height,
    this.margin,
    required this.onPressed,
    required this.backgroundColor,
    this.border,
    required this.text,
    required this.textStyle
  });

  final double height;
  final EdgeInsets? margin;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final BorderSide? border;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          side: border,
          backgroundColor: backgroundColor
        ),
        child: Text(text, style: textStyle)
      )
    );
  }
}