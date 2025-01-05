import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsBottomModalSheet {
  TermsBottomModalSheet({
    this.title,
    this.titleWidget,
    required String url,
    required this.termsButtonText,
    required this.agreeButtonText,
    required this.onAgree
  }) : url = Uri.parse(url);

  String? title;
  Widget? titleWidget;
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
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 12, bottom: 30, left: 24, right: 24),
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
                      margin: EdgeInsets.only(bottom: 20),
                      child: titleWidget
                      ?? Text(
                        title!,
                        style: const TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.3,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w500
                        )
                      )
                    ),
                    Container(
                      width: double.infinity,
                      height: 56,
                      margin: EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          foregroundColor: Colors.white,
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
                                  color: Color.fromARGB(255, 109, 109, 109),
                                  fontSize: 16,
                                  letterSpacing: 0.3,
                                  fontFamily: "Pretendard",
                                  fontWeight: FontWeight.w600
                                )
                              )
                            ),
                            SvgPicture.asset("lib/assets/svgs/modal/terms/document.svg")
                          ]
                        )
                      )
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                        ),
                        onPressed: onAgree,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("lib/assets/svgs/modal/terms/check.svg"),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                agreeButtonText,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  letterSpacing: 0.3,
                                  fontFamily: "Pretendard",
                                  fontWeight: FontWeight.w700
                                )
                              )
                            )
                          ]
                        )
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
      debugPrint("Could not launch url");
    }
  }
}