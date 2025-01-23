import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/blocs/alert/index.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

class AlertSettingContainer extends StatefulWidget {
  const AlertSettingContainer({super.key});

  @override
  State<AlertSettingContainer> createState() => _AlertSettingContainerState();
}

class _AlertSettingContainerState extends State<AlertSettingContainer> {
  @override
  void initState() {
    super.initState();
    context.read<AlertBloc>().add(AlertEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlertBloc, AlertState>(
      listener: (context, state) {
        if (state.status == AlertStatus.error) {
          GetIt.I<ToastManager>().error(message: state.message!);
        } else if (state.status == AlertStatus.changed) {
          GetIt.I<ToastManager>().show(message: state.message!, svgPath: 'lib/assets/svgs/toast/alert.svg');
        } else if (state.status == AlertStatus.denied) {
          GetIt.I<ToastManager>().error(message: state.message!);
        }
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 228, 232, 241)
            ),
            borderRadius: BorderRadius.circular(25)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 9),
                    child: SvgPicture.asset('lib/assets/svgs/mypage/bell.svg')
                  ),              
                  Text(
                    '알림',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 30, 30, 30)
                    )
                  )
                ]
              ),
              const SizedBox(height: 24),
              Text(
                '알림 주기',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '강의와 과제 마감 알림은',
                    style: TextStyle(
                      height: 1.6,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 151, 151)
                    ),
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        height: 1.4,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 109, 109, 109)
                      ),
                      children: [
                        TextSpan(
                          text: '3',
                          style: TextStyle(fontWeight: FontWeight.w700, color: Color.fromARGB(255, 0, 102, 255))
                        ),
                        TextSpan(text: '일 전 / ', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                          text: '1',
                          style: TextStyle(fontWeight: FontWeight.w700, color: Color.fromARGB(255, 0, 102, 255))
                        ),
                        TextSpan(text: '일 전 / ', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                          text: '1',
                          style: TextStyle(fontWeight: FontWeight.w700, color: Color.fromARGB(255, 0, 102, 255))
                        ),
                        TextSpan(text: '시간 전', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                          text: '에',
                          style: TextStyle(fontWeight: FontWeight.w300)
                        )
                      ]
                    )
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '전송됩니다',
                    style: TextStyle(
                      height: 1.4,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 151, 151, 151)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '알림 설정',
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
                        value: state.isEnabled,
                        onChanged: (value) => context.read<AlertBloc>().add(AlertEvent.statusChanged(isEnabled: value)),
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
    );
  }
}