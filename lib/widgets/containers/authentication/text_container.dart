import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.title, required this.value});

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 60, 60, 60)
              ),
            ),
          ),
          Container(
            height: 56,
            margin: EdgeInsets.only(top: 16),
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
                value ?? "",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 60, 60, 60)
                )
              ),
            )
          )
        ],
      ),
    );
  }
}