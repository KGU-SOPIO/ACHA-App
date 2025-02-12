import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AchaAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AchaAppbar({super.key, this.backgroundColor});

  final Color? backgroundColor;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: SvgPicture.asset('lib/assets/svgs/acha_small.svg', alignment: Alignment.topLeft),
      ),
      leadingWidth: 80
    );
  }
}