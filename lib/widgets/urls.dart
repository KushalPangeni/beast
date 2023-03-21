import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class FetchData {
  String? _urls;

  fetch() async {
    Uri url1 = Uri.parse(_urls ?? "https://www.mrbeastjobs.com");
    if (await canLaunchUrl(url1)) {
      await launchUrl(
        url1,
      );
    } else {
      throw {log('cannot launch')};
    }
  }

  void setUrl(String value) {
    _urls = value;
  }
}
