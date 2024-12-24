import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

class AlertSettingBottomModalSheet {
  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.black.withValues(alpha: 0.3),
      builder: (context) {
        return _AlertSettingContent();
      }
    );
  }
}

class _AlertSettingContent extends StatefulWidget {
  @override
  State<_AlertSettingContent> createState() => __AlertSettingContentState();
}

class __AlertSettingContentState extends State<_AlertSettingContent> {
  int _days = 0;
  int _hours = 0;
  int _minutes = 0;

  final TextStyle _unselectedTextStyle = const TextStyle(
    fontSize: 16,
    fontFamily: "Pretendard",
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 181, 175, 175)
  );

  final TextStyle _selectedTextStyle = const TextStyle(
    fontSize: 18,
    fontFamily: "Pretendard",
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 60, 60, 60)
  );

  final BoxDecoration _selectedSectionDecoration = BoxDecoration(
    color: Colors.black12,
    borderRadius: BorderRadius.circular(12)
  );

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IgnorePointer(
                  child: Container(
                    height: 6,
                    width: 79,
                    margin: EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 232, 241),
                      borderRadius: BorderRadius.circular(7)
                    )
                  )
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "얼마 전에 알려드릴까요?",
                    style: const TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.3,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w500
                    )
                  )
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildPicker(
                        value: _days,
                        maxValue: 30,
                        onChanged: (value) => setState(() => _days = value),
                        label: "일"
                      ),
                      _buildPicker(
                        value: _hours,
                        maxValue: 24,
                        onChanged: (value) => setState(() => _hours = value),
                        label: "시간"
                      ),
                      _buildPicker(
                        value: _minutes,
                        maxValue: 60,
                        step: 5,
                        onChanged: (value) => setState(() => _minutes = value),
                        label: "분"
                      )
                    ]
                  )
                ),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                    ),
                    onPressed: () {},
                    child: Text(
                      "등록하기",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 0.3,
                        fontFamily: "Pretendard",
                        fontWeight: FontWeight.w700
                      )
                    )
                  )
                )
              ]
            )
          )
        ),
      ]
    );
  }

  Widget _buildPicker({required int value, required int maxValue, required void Function(int) onChanged, required String label, int step = 1}) {
    return Row(
      children: [
        NumberPicker(
          minValue: 0,
          maxValue: maxValue,
          step: step,
          value: value,
          onChanged: onChanged,
          itemWidth: 55,
          itemHeight: 35,
          decoration: _selectedSectionDecoration,
          textStyle: _unselectedTextStyle,
          selectedTextStyle: _selectedTextStyle,
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 30, 30, 30)
            )
          )
        )
      ]
    );
  }
}