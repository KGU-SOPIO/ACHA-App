import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.height,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    required this.textStyle,
    this.border
  });

  final double height;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;
  final BorderSide? border;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _buttonStyle(),
      child: Text(text, style: textStyle)
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, height),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      side: border ?? BorderSide.none,
      backgroundColor: backgroundColor
    );
  }
}