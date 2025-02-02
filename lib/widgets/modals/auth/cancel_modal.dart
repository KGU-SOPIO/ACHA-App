import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/blocs/auth/index.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

class CancelModal {
  static final OutlineInputBorder textFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      width: 1.5,
      color: Color.fromARGB(255, 237, 239, 242),
    )
  );

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.black.withValues(alpha: 0.3),
      builder: (context) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Wrap(
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          SvgPicture.asset('lib/assets/svgs/modal/auth/cancel.svg'),
                          const SizedBox(height: 20),
                          Text(
                            '계정 삭제',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 30, 30, 30)
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            '사용자 정보는 안전하게 삭제돼요',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 109, 109, 109)
                            )
                          ),
                          const SizedBox(height: 40),
                          Text(
                            '비밀번호 확인',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 30, 30, 30)
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            autofocus: true,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: '비밀번호',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 186, 186, 186),
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                              filled: true,
                              fillColor: const Color.fromARGB(255, 251, 251, 251),
                              border: textFieldBorder,
                              enabledBorder: textFieldBorder,
                              focusedBorder: textFieldBorder
                            ),
                          )
                        ]
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(0, 56),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                backgroundColor: const Color.fromARGB(255, 237, 239, 242),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                '취소',
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
                                '삭제',
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
          )
        );
      }
    );
  }
}