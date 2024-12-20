import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AlertSettingContainer extends StatefulWidget {
  const AlertSettingContainer({super.key});

  @override
  State<AlertSettingContainer> createState() => _AlertSettingContainerState();
}

class _AlertSettingContainerState extends State<AlertSettingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(255, 228, 232, 241)
        ),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("lib/assets/svgs/mypage/bell.svg"),
              Text(
                "알림 설정",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 30, 30, 30)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}