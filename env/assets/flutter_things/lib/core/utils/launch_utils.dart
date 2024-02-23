import 'package:url_launcher/url_launcher.dart';

import '../logger.dart';

Future<void> openPlaystore(String id) =>
    openUrl('https://play.google.com/store/apps/details?id=$id&hl=en');

Future<void> openUrl(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    $logger.error('Could not launch $uri');
  }
}
