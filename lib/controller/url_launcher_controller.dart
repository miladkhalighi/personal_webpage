import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class UrlLauncherController extends GetxController {
  Future<void> launchUrl(Uri url) async {
    if (!await launcher.launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> launchGithub() async {
    final Uri url = Uri.parse('https://github.com/miladkhalighi');
    launchUrl(url);
  }

    Future<void> launchInstagram() async {
    final Uri url = Uri.parse('https://www.instagram.com/milaacode/');
    launchUrl(url);
  }

    Future<void> launchLinkedin() async {
    final Uri url = Uri.parse('https://www.linkedin.com/in/miladkhalighi/');
    launchUrl(url);
  }
}
