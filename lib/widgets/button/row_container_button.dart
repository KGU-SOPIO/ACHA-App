import 'package:flutter/material.dart';

class RowContainerButton extends StatelessWidget {
  const RowContainerButton({
    super.key,
    required this.margin,
    required this.padding,
    required this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.border,
    required this.borderRadius,
    required this.text,
    required this.textStyle,
    required this.widget
  });

  final EdgeInsets margin;
  final EdgeInsets padding;
  final VoidCallback onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final BorderSide border;
  final double borderRadius;
  final String text;
  final TextStyle textStyle;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: border,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
          backgroundColor: backgroundColor
        ),
        child: Container(
          width: double.infinity,
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: textStyle),
              widget
            ]
          )
        )
      )
    );
  }
}