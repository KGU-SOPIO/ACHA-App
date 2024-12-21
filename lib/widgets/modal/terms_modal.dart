import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class TermsBottomModalSheet {
  final String modalTitle;
  final String termsTitle;
  final Uri url;
  final String buttonText;
  final VoidCallback onAgree;

  TermsBottomModalSheet({
    required this.modalTitle,
    required this.termsTitle,
    required String url,
    required this.buttonText,
    required this.onAgree
  }) : url = Uri.parse(url);

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.black.withOpacity(0.3),
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
                      child: Text(
                        modalTitle,
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
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () => _openTermsUrl(url),
                        child: Text(
                          termsTitle,
                          style: const TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w300
                          ),
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
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 0.3,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        );
      }
    );
  }

  Future<void> _openTermsUrl(Uri url) async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } catch (e) {
      debugPrint("Could not launch url");
    }
  }
}