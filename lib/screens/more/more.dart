// ignore_for_file: prefer_const_constructors

import 'package:best/widgets/urls.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});
  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  // final String str = "‎";
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
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('images/tree.png'), fit: BoxFit.fill)),
              child: ListTile(
                title: Center(
                    child: Text(
                  "Plant Trees",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
                onTap: () async {
                  fetch.setUrl("https://teamtrees.org/");
                  fetch.fetch();
                },
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
