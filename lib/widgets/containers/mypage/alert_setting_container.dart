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
    return BlocListener<AlertBloc, AlertState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == AlertStatus.error) {
          GetIt.I<ToastManager>().error(message: state.message!);
        } else if (state.status == AlertStatus.changed) {
          GetIt.I<ToastManager>().show(message: state.message!, svgPath: 'lib/assets/svgs/toast/alert.svg');
        }
      },
      child: BlocBuilder<AlertBloc, AlertState>(
        builder: (context, state) {
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
                        child: SvgPicture.asset('lib/assets/svgs/mypage/bell.svg')
                      ),              
                      Text(
                        '알림 설정',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 30, 30, 30)
                        )
                      )
                    ]
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '알림 켜기',
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
      )
    );
  }
}