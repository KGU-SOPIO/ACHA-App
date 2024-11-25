import 'package:flutter/material.dart';

import 'package:acha/app.dart';

import 'package:acha/widgets/toast/toast.dart';

import 'package:auto_size_text/auto_size_text.dart';

class ToastManager {
  static const _toastDuration = Duration(milliseconds: 1700);
  static const _animationDuration = Duration(milliseconds: 700);

  void success({required String message}) async {
    Widget toastContainer = Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 18),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(100, 50, 90, 220)
        ),
        child: Row(
          children: [
            const Flexible(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: Icon(
                        Icons.check_sharp,
                        size: 26,
                        color: Colors.white
                    )
                )
            ),
            Flexible(
              flex: 8,
              child: AutoSizeText(
                message.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
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

  void error({required String message}) async {
    Widget toastContainer = Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 18),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 225, 80, 80),
        ),
        child: Row(
          children: [
            const Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(right: 24),
                child: Icon(
                    Icons.warning_amber_outlined,
                    size: 26,
                    color: Colors.white
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: AutoSizeText(
                message.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
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