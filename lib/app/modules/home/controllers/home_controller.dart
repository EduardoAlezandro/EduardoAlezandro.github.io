import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final Uri urlGit = Uri.parse('https://github.com/EduardoAlezandro');

  final Uri urlLikedin =
      Uri.parse('https://www.linkedin.com/in/eduardo-alezandro-8aaa42197');

  final Uri urlInstagram =
      Uri.parse('https://www.instagram.com/eduardoalezandro');

  final Uri urlWhatapp = Uri.parse('https://wa.me/5562999431235');

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  alaunchUrl(Uri url) async {
    if (await launchUrl(url, mode: LaunchMode.inAppWebView)) ;
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
