import 'dart:developer';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Player extends StatelessWidget {
  final String title;
  final String url;
  const Player({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: YoutubePlayer.convertUrlToId(url) ?? '',
                  flags: const YoutubePlayerFlags(
                      autoPlay: true,
                      mute: false,
                      loop: true,
                      forceHD: true,
                      enableCaption: false),
                ),
                bufferIndicator: const CircularProgressIndicator(),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                topActions: [
                  IconButton(
                      onPressed: () {
                        log("Top Action Button pressed");
                      },
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
