import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AlertSettingContainer extends StatefulWidget {
  const AlertSettingContainer({super.key});

  @override
  State<AlertSettingContainer> createState() => _AlertSettingContainerState();
}

class _AlertSettingContainerState extends State<AlertSettingContainer> {
  bool _isAlert = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
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
          Container(
            margin: EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 9),
                  child: SvgPicture.asset("lib/assets/svgs/mypage/bell.svg")
                ),              
                Text(
                  "알림 설정",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 30, 30, 30)
                  ),
                )
              ],
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "알림 켜기",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 30, 30, 30)
                )
              ),
              SizedBox(
                height: 30,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: CupertinoSwitch(
                    value: _isAlert,
                    onChanged: (value) {
                      setState(() {
                        _isAlert = value;
                      });
                    },
                    activeTrackColor: Color.fromARGB(255, 0, 102, 255)
                  )
                )
              )
            ]
          )
        ]
      )
    );
  }
}