import 'package:flutter/material.dart';

class RowContainerButton extends StatelessWidget {
  const RowContainerButton({
    super.key,
    this.height,
    this.padding,
    this.mainAxisAlignment,
    required this.onPressed,
    this.foregroundColor,
    required this.backgroundColor,
    this.border,
    required this.borderRadius,
    this.leading,
    this.text,
    this.textStyle,
    this.textWidget,
    required this.widget,
    this.reverse = false,
  });

  final double? height;
  final EdgeInsets? padding;
  final MainAxisAlignment? mainAxisAlignment;
  final VoidCallback onPressed;
  final Color? foregroundColor;
  final Color backgroundColor;
  final BorderSide? border;
  final double borderRadius;
  final Widget? leading;
  final String? text;
  final TextStyle? textStyle;
  final Text? textWidget;
  final Widget widget;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _buttonStyle(),
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    final rowTextWidget = textWidget ?? Text(text!, style: textStyle);
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
      children: reverse
          ? [
              Row(
                children: [if (leading != null) leading!, widget],
              ),
              rowTextWidget,
            ]
          : [
              Row(
                children: [if (leading != null) leading!, rowTextWidget],
              ),
              widget,
            ],
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, height ?? 0),
      shape: RoundedRectangleBorder(
        side: border ?? BorderSide.none,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
    );
  }
}
