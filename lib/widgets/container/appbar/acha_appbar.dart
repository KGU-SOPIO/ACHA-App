import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AchaAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AchaAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 24),
        child: SvgPicture.asset("lib/assets/svgs/home_logo.svg", alignment: Alignment.topLeft),
      ),
      leadingWidth: 80
    );
  }
}