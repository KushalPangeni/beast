// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:best/screens/constants/screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
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
                color: Color.fromARGB(255, 1, 90, 81),
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
                backgroundColor: Color.fromARGB(255, 1, 90, 81),
                activeColor: Colors.white,
                color: Colors.white,
                tabBackgroundColor: Colors.teal.shade800,
                tabs: [
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
