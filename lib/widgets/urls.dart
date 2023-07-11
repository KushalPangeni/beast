import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

void launchYouTubeApp(String youtubeVideoUrl) async {

  if (await canLaunchUrl(Uri.parse(youtubeVideoUrl))) {
    // Open the app URL
    await launchUrl(Uri.parse(youtubeVideoUrl),
        mode: LaunchMode.externalApplication);
  } else {
    // If the YouTube app is not installed, open the web URL
    if (await canLaunchUrl(Uri.parse(youtubeVideoUrl))) {
      await launchUrl(Uri.parse(youtubeVideoUrl));
    } else {
      throw 'Could not launch $youtubeVideoUrl';
    }
  }
}

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
