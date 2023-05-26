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
                fetch.setUrl(
                    "https://www.google.com/search?q=ipl+2023&oq=ipl&aqs=edge.1.69i59j0i131i433i512j0i3j0i131i433i512l2j0i131i433i650j0i131i433i512l2j69i64.2842j0j1&sourceid=chrome&ie=UTF-8#sie=lg;/g/11q99yy05p;5;/m/03b_lm1;mt;fp;1;;;");
                fetch.fetch();
              },
            ),
            // ListTile(
            //   title: Text("Art"),
            //   onTap: () async {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => WebPage(),
            //       ),
            //     );
            //     // fetch.setUrl("https://lexica.art");
            //     // fetch.fetch();
            //   },
            // ),
            // SelectableText(
            //   "This text can be copied, really??",
            //   style: TextStyle(
            //       color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            // ),
            // SelectableText(str),
            // sizedbox2,
            // GestureDetector(
            //   onTap: () {
            //     Clipboard.setData(ClipboardData(text: str));
            //     log("copied");
            //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //       content: Text("Copied"),
            //       duration: Duration(milliseconds: 350),
            //     ));
            //   },
            //   child: Text("Copy"),
            // )
          ],
        ),
      ),
    );
  }
}
