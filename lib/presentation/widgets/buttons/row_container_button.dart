import 'package:flutter/material.dart';

class RowContainerButton extends StatelessWidget {
  const RowContainerButton({
    super.key,
    required this.padding,
    required this.onPressed,
    this.foregroundColor,
    required this.backgroundColor,
    this.border,
    required this.borderRadius,
    required this.text,
    required this.textStyle,
    required this.widget,
  });

  final EdgeInsets padding;
  final VoidCallback onPressed;
  final Color? foregroundColor;
  final Color backgroundColor;
  final BorderSide? border;
  final double borderRadius;
  final String text;
  final TextStyle textStyle;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _buttonStyle(),
      child: Padding(
        padding: padding,
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: textStyle),
        widget,
      ],
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 0),
      shape: RoundedRectangleBorder(
        side: border ?? BorderSide.none,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
    );
  }
}
