import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AchaColors.white,
      body: Center(
        child: SvgPicture.asset('lib/assets/svgs/acha/large.svg'),
      ),
    );
  }
}
