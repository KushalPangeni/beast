import 'package:best/screens/constants/beast_philanthropy_const.dart';
import 'package:best/screens/constants/main_channel_const.dart';
import 'package:best/screens/constants/mrbeast_2_const.dart';
import 'package:best/screens/home/homepage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../player/player.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedbox2,
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0, 0, 2),
            child: Text(
              "Hi There,",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Text(
              "Kushal",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          sizedbox2,
          customListView(
              "MrBeast",
              const Color.fromARGB(255, 54, 46, 43),
              context,
              const Homepage(
                endex: 0,
                apptitle: "MrBeast",
              ),
              mainChannel),
          sizedbox1,
          customListView(
              "MrBeast 2",
              const Color.fromARGB(255, 12, 46, 74),
              context,
              const Homepage(
                endex: 1,
                apptitle: "MrBeast 2",
              ),
              mrbeast2),
          sizedbox1,
          customListView(
              "Beast Philanthrophy",
              const Color.fromARGB(255, 11, 63, 66),
              context,
              const Homepage(
                endex: 2,
                apptitle: "Beast Philanthrophy",
              ),
              beastPhilanthrophy),
          sizedbox1,
          customListView(
              "Beast Reacts",
              const Color.fromARGB(255, 75, 4, 70),
              context,
              const Homepage(
                endex: 0,
                apptitle: "Beast Reacts",
              ),
              mainChannel),
          sizedbox1,
          customListView(
              "MrBeast Gaming",
              const Color.fromARGB(255, 22, 51, 22),
              context,
              const Homepage(
                endex: 0,
                apptitle: "MrBeast Gaming",
              ),
              mainChannel),
          sizedbox1
        ],
      ),
    );
  }

  Widget customListView(
      String title, Color colors, BuildContext context, var nav, List list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title
              Container(
                decoration: BoxDecoration(
                    color: colors, borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6, 4, 6, 4.0),
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              //View all ➡
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => nav),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(6, 4, 6, 4.0),
                  child: Text(
                    "View all ➡",
                    style: TextStyle(
                      // decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //listview of videos
        SizedBox(
          height: 180,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Player(
                                      url: list[index][1],
                                      title: list[index][0],
                                    )),
                              ));
                        },
                        child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 150,
                            width: 280,
                            decoration: BoxDecoration(
                                color: colors,
                                borderRadius: BorderRadius.circular(4)),
                            child: CachedNetworkImage(
                              imageUrl: list[index][2],
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Image.asset(
                                "images/cover.jpg",
                                fit: BoxFit.cover,
                              ),
                              errorWidget: (context, url, error) =>
                                  Shimmer.fromColors(
                                      baseColor: Colors.grey.shade200,
                                      highlightColor: Colors.grey.shade100,
                                      child: Container(
                                        color: Colors.teal,
                                      )),
                            )
                            // Image(
                            //   image: NetworkImage(list[index][2]),
                            //   fit: BoxFit.cover,
                            // ),
                            ),
                      ),
                      Text(
                        list[index][0],
                        maxLines: 2,
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
