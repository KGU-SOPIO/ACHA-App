import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/data/models/index.dart';

class CarouselActivityContainer extends StatelessWidget {
  const CarouselActivityContainer({super.key, required this.week, required this.activity});

  final int week;
  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 237, 239, 242)
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              '$week주차',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 30, 30, 30)
              )
            )
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 237, 239, 242),
                width: 1.5
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                SvgPicture.asset('lib/assets/svgs/course/lecture.svg'),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    activity.name,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 60, 60, 60)
                    )
                  )
                )
              ]
            )
          )
        ]
      )
    );
  }
}