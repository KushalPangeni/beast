// ignore_for_file: prefer_const_constructors

import 'package:best/widgets/urls.dart';
import 'package:flutter/material.dart';

import '../../webview_delete_later.dart';

class More extends StatefulWidget {
  const More({super.key});
  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  final fetch = FetchData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MrBeast sites"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("MrBeast Burger"),
              onTap: () async {
                fetch.setUrl("https://www.mrbeastburger.com");
                fetch.fetch();
              },
            ),
            ListTile(
              title: Text("MrBeast Shop"),
              onTap: () async {
                fetch.setUrl("https://shopmrbeast.com");
                fetch.fetch();
              },
            ),
            ListTile(
                title: Text("MrBeast Philanthropy"),
                onTap: () async {
                  fetch.setUrl("https://www.beastphilanthropy.org");
                  fetch.fetch();
                }),
            ListTile(
              title: Text("MrBeast Philanthropy Shop"),
              onTap: () async {
                fetch.setUrl("https://shopbeastphilanthropy.com");
                fetch.fetch();
              },
            ),
            ListTile(
              title: Text("Feastables"),
              onTap: () async {
                fetch.setUrl("https://feastables.com");
                fetch.fetch();
              },
            ),
            ListTile(
              title: Text("Jobs"),
              onTap: () async {
                fetch.setUrl("https://www.mrbeastjobs.com");
                fetch.fetch();
              },
            ),
            ListTile(
              title: Text("Art"),
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebPage(),
                  ),
                );
                // fetch.setUrl("https://lexica.art");
                // fetch.fetch();
              },
            ),
          ],
        ),
      ),
    );
  }
}
