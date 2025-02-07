import 'package:flutter/material.dart';

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
        _buildValue()
      ]
    );
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 60, 60, 60)
      )
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
          color: Color.fromARGB(255, 237, 239, 242),
        ),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 60, 60, 60)
        )
      )
    );
  }
}