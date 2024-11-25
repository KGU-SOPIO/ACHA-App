import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) {
        return Wrap(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            modalTitle,
                            style: const TextStyle(
                              fontSize: 18,
                              letterSpacing: 0.3,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: InkWell(
                        child: Text(
                          termsTitle,
                          style: const TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        onTap: () => _openTermsUrl(url),
                      )
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
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
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      debugPrint("Could not launch url");
    }
  }
}