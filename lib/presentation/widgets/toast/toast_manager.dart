import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/app.dart';

import 'package:acha/presentation/widgets/index.dart';

class ToastManager {
  static const _toastDuration = Duration(milliseconds: 1700);
  static const _animationDuration = Duration(milliseconds: 700);
  static final _overlayLifetime = Duration(milliseconds: _toastDuration.inMilliseconds + _animationDuration.inMilliseconds*2);

  void success({required String message}) {
    _showToast(message: message, svgPath: 'lib/assets/svgs/toast/success.svg');
  }

  void error({required String message}) {
    _showToast(message: message, svgPath: 'lib/assets/svgs/toast/error.svg');
  }

  void show({required String message, required String svgPath}) {
    _showToast(message: message, svgPath: svgPath);
  }

  Future _showToast({required String message, required String svgPath}) async {
    final toastContainer = _buildToastContainer(message: message, svgPath: svgPath);
    final overlayEntry = _createOverlayEntry(toastContainer: toastContainer);

    final overlay = Navigator.of(AppView.navigatorKey.currentContext!).overlay;
    if (overlay == null) return;

    overlay.insert(overlayEntry);

    await Future.delayed(_overlayLifetime);
    overlayEntry.remove();
  }

  Widget _buildToastContainer({required String message, required String svgPath}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.only(left: 22, right: 10, top: 16, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 223, 236, 255),
        border: Border.all(
          width: 1.5,
          color: const Color.fromARGB(255, 166, 201, 255)
        )
      ),
      child: Row(
        children: [
          Flexible(
              flex: 2,
              child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(svgPath)
              )
          ),
          Flexible(
            flex: 8,
            child: Text(
              message.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
              maxLines: 2,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 102, 255)
              )
            )
          )
        ]
      )
    );
  }

  OverlayEntry _createOverlayEntry({required Widget toastContainer}) {
    return OverlayEntry(
      builder: (_) => Toast(
        toastContainer: toastContainer,
        toastDuration: _toastDuration,
        animationDuration: _animationDuration
      )
    );
  }
}