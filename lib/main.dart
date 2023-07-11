import 'package:best/screens/constants/ad.dart';
import 'package:best/screens/constants/screen.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  RequestConfiguration requestConfiguration =
      RequestConfiguration(testDeviceIds: devices);
  MobileAds.instance.updateRequestConfiguration(requestConfiguration);
  loadAppOpenAd();
  runApp(const MyApp());
}

AppOpenAd? appOpenAd;
loadAppOpenAd() {
  AppOpenAd.load(
      adUnitId: openAdUnit,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(onAdLoaded: (ad) {
        appOpenAd = ad;
        appOpenAd!.show();
      }, onAdFailedToLoad: (error) {
        print(error);
      }),
      orientation: AppOpenAd.orientationPortrait);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: screens[currentindex],
          bottomNavigationBar: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 90, 81),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: GNav(
                selectedIndex: currentindex,
                onTabChange: (value) {
                  setState(() {
                    currentindex = value;
                  });
                },
                gap: 8,
                padding: const EdgeInsets.all(16),
                backgroundColor: const Color.fromARGB(255, 1, 90, 81),
                activeColor: Colors.white,
                color: Colors.white,
                tabBackgroundColor: Colors.teal.shade800,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.trending_up,
                    text: 'Favourite',
                  ),
                  GButton(
                    icon: Icons.menu,
                    text: 'More',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
