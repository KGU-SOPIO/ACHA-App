import 'package:flutter/material.dart';

import 'package:acha/app.dart';

import 'package:acha/widgets/toast/toast.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ToastManager {
  static const _toastDuration = Duration(milliseconds: 1700);
  static const _animationDuration = Duration(milliseconds: 700);

  void success({required String message}) async {
    Widget toastContainer = Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 29),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(180, 49, 67, 82)
        ),
        child: Row(
          children: [
            Flexible(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: SvgPicture.asset("lib/assets/svgs/toast/success.svg")
                )
            ),
            Flexible(
              flex: 8,
              child: Text(
                message.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                )
              ),
            )
          ],
        )
    );

    OverlayEntry overlayEntry = OverlayEntry(builder: (_) => Toast(toastContainer: toastContainer, toastDuration: _toastDuration, animationDuration: _animationDuration));
    Navigator.of(AppView.navigatorKey.currentContext!).overlay!.insert(overlayEntry);
    await Future.delayed(const Duration(milliseconds: 3100));
    overlayEntry.remove();
  }

  void error({required String message}) async {
    Widget toastContainer = Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 29),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(180, 49, 67, 82)
        ),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(right: 24),
                child: SvgPicture.asset("lib/assets/svgs/toast/warning.svg")
              ),
            ),
            Flexible(
              flex: 8,
              child: Text(
                message.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            )
          ],
        )
    );

    OverlayEntry overlayEntry = OverlayEntry(builder: (_) => Toast(toastContainer: toastContainer, toastDuration: _toastDuration, animationDuration: _animationDuration));
    Navigator.of(AppView.navigatorKey.currentContext!).overlay!.insert(overlayEntry);
    await Future.delayed(const Duration(milliseconds: 3100));
    overlayEntry.remove();
  }
}