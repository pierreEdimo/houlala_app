import 'package:url_launcher/url_launcher.dart';

class OpenUrl {
  static void openContact(String scheme, String path) async {
    final Uri uri = Uri(
      scheme: scheme,
      path: path,
    );
    await launchUrl(uri);
  }
}
