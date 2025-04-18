import 'package:flutter/material.dart';

import 'package:acha/core/constants/index.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        const SizedBox(height: 16),
        _buildValue(),
      ],
    );
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AchaColors.gray60,
      ),
    );
  }

  Widget _buildValue() {
    return Container(
      width: double.infinity,
      height: 56,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: AchaColors.gray237_239_242,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AchaColors.gray60,
        ),
      ),
    );
  }
}
