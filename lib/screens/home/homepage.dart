// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:developer';

import 'package:best/screens/constants/main_channel_const.dart';
import 'package:best/widgets/urls.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants/list_of_list.dart';
// ignore: depend_on_referenced_packages

class Homepage extends StatefulWidget {
  final int endex;
  final String? apptitle;
  const Homepage({super.key, required this.endex, this.apptitle});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.apptitle ?? "MrBeast"),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: oflist[widget.endex].length,
        itemBuilder: ((context, index) => imagee(oflist[widget.endex][index])),
      ),
    );
  }

  Widget imagee(List imgSrc) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 10, 4, 10),
      child: InkWell(
        onTap: () {
          log(imgSrc.toString());
          launchYouTubeApp(imgSrc[1]);
        },
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.teal,
              ),
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: CachedNetworkImage(
                imageUrl: imgSrc[2],
                fit: BoxFit.cover,
                placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey.shade200,
                    highlightColor: Colors.grey.shade50,
                    child: Container(
                      color: Colors.teal,
                    )),
                errorWidget: (context, url, error) => Shimmer.fromColors(
                  baseColor: Colors.red,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            sizedbox0,
            Text(
              imgSrc[0],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
