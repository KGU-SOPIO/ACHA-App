import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/blocs/auth/index.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

class CancelModal {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.black.withValues(alpha: 0.3),
      builder: (context) {
        return Wrap(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 12, bottom: 40, left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IgnorePointer(
                      child: Container(
                        height: 6,
                        width: 79,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 232, 241),
                          borderRadius: BorderRadius.circular(7)
                        )
                      )
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 30, 30, 30)
                              ),
                              children: [
                                TextSpan(
                                  text: '아차를 탈퇴할까요?\n',
                                  style: TextStyle(fontWeight: FontWeight.w700)
                                ),
                                TextSpan(
                                  text: '사용자 정보는 안전하게 삭제돼요',
                                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.7)
                                )
                              ]
                            )
                          ),
                          SvgPicture.asset('lib/assets/svgs/acha_logo.svg', width: 50)
                        ]
                      )
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(0, 56),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              ),
                              backgroundColor: const Color.fromARGB(255, 242, 244, 246),
                            ),
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              '아니요',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 109, 109, 109)
                              )
                            )
                          )
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(0, 56),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              ),
                              backgroundColor: const Color.fromARGB(255, 255, 78, 107)
                            ),
                            onPressed: () {
                              context.read<AuthenticationBloc>().add(AuthenticationEvent.logout());
                              GetIt.I<ToastManager>().success(message: '서비스를 탈퇴했어요');
                            },
                            child: Text(
                              '탈퇴',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              )
                            )
                          )
                        )
                      ]
                    )
                  ]
                )
              )
            )
          ]
        );
      }
    );
  }
}