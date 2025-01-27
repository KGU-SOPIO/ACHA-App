import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class PhraseContainer extends StatelessWidget {
  const PhraseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 186, 186, 186),
        ),
        borderRadius: BorderRadius.circular(25),
        color: Color.fromARGB(255, 237, 239, 242)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 30, 30, 30)
              ),
              children: [
                TextSpan(
                  text: '오늘의 ',
                  style: TextStyle(fontWeight: FontWeight.w500)
                ),
                TextSpan(
                  text: '문구',
                  style: TextStyle(fontWeight: FontWeight.w700)
                )
              ]
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 15, bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset('lib/assets/svgs/mypage/left.svg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset('lib/assets/svgs/mypage/right.svg'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: Text(
                      '평범하게 살고 싶지 않은데\n왜 평범하게 노력하는가?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 102, 255)
                      )
                    )
                  )
                ]
              )
            )
          )
        ]
      )
    );
  }
}