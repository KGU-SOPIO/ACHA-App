import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContentSkeletonContainer extends StatelessWidget {
  const ContentSkeletonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 228, 232, 241)
                )
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Skeleton_Skeleton',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 30, 30, 30)
                  )
                ),
                const SizedBox(height: 10),
                Text(
                  'Skeleton_Skeleton_Ske',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 30, 30, 30)
                  )
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('lib/assets/svgs/notice/person.svg'),
                    const SizedBox(width: 7),
                    Text(
                      'Skeleton',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 151, 151, 151)
                      )
                    ),
                    const SizedBox(width: 20),
                    SvgPicture.asset('lib/assets/svgs/notice/clock.svg'),
                    const SizedBox(width: 7),
                    Text(
                      'Skeleton',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 151, 151, 151)
                      )
                    )
                  ]
                ),
                const SizedBox(height: 20)
              ]
            )
          ),
          const SizedBox(height: 20)
        ]
      )
    );
  }
}