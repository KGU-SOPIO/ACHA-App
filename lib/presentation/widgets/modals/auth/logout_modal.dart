import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class LogoutModal {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: AchaColors.white,
      barrierColor: AchaColors.black.withValues(alpha: 0.3),
      builder: (context) => _buildContent(context),
    );
  }

  static Widget _buildContent(BuildContext context) {
    return Wrap(
      children: [
        Center(
          child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 12, bottom: 40, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHandle(),
                const SizedBox(height: 24),
                _buildModalBody(context),
                const SizedBox(height: 40),
                _buildButtons(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget _buildHandle() {
    return IgnorePointer(
      child: Container(
        height: 6,
        width: 79,
        decoration: BoxDecoration(
          color: AchaColors.gray228_232_241,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  static Widget _buildModalBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        SvgPicture.asset('lib/assets/svgs/modal/auth/logout.svg'),
        const SizedBox(height: 20),
        const Text(
          '로그아웃 할까요?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AchaColors.gray30,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '기기의 정보들은 안전하게 삭제돼요',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AchaColors.gray109,
              ),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'lib/assets/images/modal/auth/check.png',
              width: 20,
            ),
          ],
        ),
      ],
    );
  }

  static Widget _buildButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: AchaColors.gray237_239_242,
            ),
            onPressed: () => Navigator.pop(context),
            child: const Text(
              '취소',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AchaColors.gray109,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: AchaColors.primaryBlue,
            ),
            onPressed: () {
              context
                  .read<AuthenticationBloc>()
                  .add(const AuthenticationEvent.logout());
              GetIt.I<ToastManager>().show(
                  message: '정상적으로 로그아웃했어요',
                  svgPath: 'lib/assets/svgs/toast/logout.svg');
            },
            child: const Text(
              '로그아웃',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AchaColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
