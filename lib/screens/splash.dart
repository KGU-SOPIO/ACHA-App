import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(
      builder: (context) => const SplashScreen()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset('lib/assets/svgs/acha_large.svg'),
      )
    );
  }
}