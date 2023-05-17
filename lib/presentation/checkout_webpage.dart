
import 'package:url_launcher/url_launcher.dart';



Future<void> launchURL(String url) async {
  final Uri uri = Uri(scheme: "https", host: url);
  if(!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw "Can not launch url";
  }
}