import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class TermsBottomModalSheet {
  TermsBottomModalSheet({
    required this.titleWidget,
    required this.uri,
    required this.termsButtonText,
    required this.agreeButtonText,
    required this.onAgree,
  });

  final Widget titleWidget;
  final Uri uri;
  final String termsButtonText;
  final String agreeButtonText;
  final VoidCallback onAgree;

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: AchaColors.white,
      barrierColor: AchaColors.black.withValues(alpha: 0.3),
      builder: (context) => _buildContent(context),
    );
  }

  static Widget _buildHandle() {
    return IgnorePointer(
      child: Container(
        height: 6,
        width: 79,
        margin: const EdgeInsets.only(bottom: 24),
        decoration: BoxDecoration(
          color: AchaColors.gray228_232_241,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Wrap(
      children: [
        Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 40,
              left: 24,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHandle(),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 20,
                  ),
                  child: titleWidget,
                ),
                _buildTermsButton(),
                const SizedBox(height: 20),
                _buildAgreeButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTermsButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: AchaColors.gray242_244_246,
      ),
      onPressed: () => _openTermsUri(uri: uri),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              termsButtonText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AchaColors.gray109,
              ),
            ),
          ),
          SvgPicture.asset('lib/assets/svgs/modal/terms/document.svg')
        ],
      ),
    );
  }

  Widget _buildAgreeButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: AchaColors.primaryBlue,
      ),
      onPressed: onAgree,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('lib/assets/svgs/modal/terms/check.svg'),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              agreeButtonText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AchaColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openTermsUri({required Uri uri}) async {
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      GetIt.I<ToastManager>().error(message: '약관 페이지를 열지 못했어요');
    }
  }
}
