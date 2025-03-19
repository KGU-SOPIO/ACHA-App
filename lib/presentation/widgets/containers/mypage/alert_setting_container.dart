import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class AlertSettingContainer extends StatefulWidget {
  const AlertSettingContainer({super.key});

  @override
  State<AlertSettingContainer> createState() => _AlertSettingContainerState();
}

class _AlertSettingContainerState extends State<AlertSettingContainer> {
  @override
  void initState() {
    super.initState();
    // context.read<AlertBloc>().add(const AlertEvent.fetchAlertStatus());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlertBloc, AlertState>(
      listener: _onAlertStatusChanged,
      builder: _buildContent,
    );
  }

  void _onAlertStatusChanged(BuildContext context, AlertState state) {
    switch (state.status) {
      case AlertStatus.error:
        GetIt.I<ToastManager>().error(message: state.message!);
        break;
      case AlertStatus.changed:
        GetIt.I<ToastManager>().show(
            message: state.message!,
            svgPath: 'lib/assets/svgs/toast/alert.svg');
        break;
      case AlertStatus.denied:
        GetIt.I<ToastManager>().error(message: state.message!);
        break;
      default:
        break;
    }
  }

  Widget _buildContent(BuildContext context, AlertState state) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AchaColors.white,
        border: Border.all(color: AchaColors.gray228_232_241),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          _buildTitle(),
          const SizedBox(height: 24),
          _buildAlertPeriod(),
          // const SizedBox(height: 24),
          // _buildAlertToggle(state),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 9),
          child: SvgPicture.asset('lib/assets/svgs/mypage/bell.svg'),
        ),
        const Text(
          '알림',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AchaColors.gray30,
          ),
        ),
      ],
    );
  }

  Widget _buildAlertPeriod() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '알림 주기',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(
                    height: 1.4,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: AchaColors.gray109),
                children: [
                  TextSpan(
                    text: '3',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AchaColors.primaryBlue,
                    ),
                  ),
                  TextSpan(
                      text: '일 · ',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  TextSpan(
                    text: '1',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AchaColors.primaryBlue,
                    ),
                  ),
                  TextSpan(
                      text: '일 · ',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  TextSpan(
                    text: '1',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AchaColors.primaryBlue,
                    ),
                  ),
                  TextSpan(
                      text: '시간 전',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              '강의 / 과제 알림 발송',
              style: TextStyle(
                height: 1.4,
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: AchaColors.gray151,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAlertToggle(AlertState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          '알림 설정',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray30,
          ),
        ),
        SizedBox(
          height: 30,
          child: FittedBox(
            fit: BoxFit.contain,
            child: CupertinoSwitch(
              value: state.isEnabled,
              onChanged: (value) => context
                  .read<AlertBloc>()
                  .add(AlertEvent.changeAlertStatus(isEnabled: value)),
              activeTrackColor: AchaColors.primaryBlue,
            ),
          ),
        ),
      ],
    );
  }
}
