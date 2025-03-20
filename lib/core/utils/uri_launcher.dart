import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:acha/presentation/widgets/index.dart';

class UriLauncher {
  static Future<void> openActivityUri(String? link) async {
    if (link == null) {
      GetIt.I<ToastManager>().error(message: '활동이 비활성화 되어있어요');
      return;
    }

    try {
      final uri = Uri.parse(link);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      GetIt.I<ToastManager>().error(message: 'LMS 페이지를 열지 못했어요');
    }
  }
}
