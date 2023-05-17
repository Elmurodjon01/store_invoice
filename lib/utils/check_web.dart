



import 'package:url_launcher/url_launcher.dart';

import '../model/constants.dart';

void checkWeb ()async {
  var url = Uri.parse(gsheetsUrl);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  }
}