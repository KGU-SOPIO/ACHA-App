import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsBottomModalSheet {
  TermsBottomModalSheet({
    required this.titleWidget,
    required String url,
    required this.termsButtonText,
    required this.agreeButtonText,
    required this.onAgree
  }) : url = Uri.parse(url);

  final Widget titleWidget;
  final Uri url;
  final String termsButtonText;
  final String agreeButtonText;
  final VoidCallback onAgree;

  void show(BuildContext context) {
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
                        margin: EdgeInsets.only(bottom: 24),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 232, 241),
                          borderRadius: BorderRadius.circular(7)
                        )
                      )
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
                      child: titleWidget
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          backgroundColor: const Color.fromARGB(255, 242, 244, 246),
                        ),
                        onPressed: () => _openTermsUrl(url: url),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                termsButtonText,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 109, 109, 109)
                                )
                              )
                            ),
                            SvgPicture.asset('lib/assets/svgs/modal/terms/document.svg')
                          ]
                        )
                      )
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                      ),
                      onPressed: onAgree,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('lib/assets/svgs/modal/terms/check.svg'),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              agreeButtonText,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              )
                            )
                          )
                        ]
                      )
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

  Future<void> _openTermsUrl({required Uri url}) async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } catch (e) {
      debugPrint('Could not launch url');
    }
  }
}