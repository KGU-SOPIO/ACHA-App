import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 60, 60, 60)
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 56,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Color.fromARGB(255, 237, 239, 242),
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 60, 60, 60)
                )
              )
            )
          )
        ]
      )
    );
  }
}