import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
class video {
  String title;
  String subtitle;
  YoutubePlayerController videoController;
  Color materialcolor;

  video({
    this.title,
    this.subtitle,
    this.materialcolor,
    this.videoController,
  });
  List<video> videoList() {
    List videoData = List<video>();
    return videoData
      ..add(video(
          title: "Polish Sample in 3-Micro",
          subtitle:
              "Cover the sample with lubricant and polish the sample in circular motion",
          materialcolor: Colors.pink,
          videoController: YoutubePlayerController(
            initialVideoId: 'PB-dDLVnx-s', //时间在Main file里
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Clean sample after polished",
            subtitle: "Rinse the surface with water and dry the sample",
            materialcolor: Colors.red,
            videoController: YoutubePlayerController(
              initialVideoId: 'cJO8wPSWNLs',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Polish sample using 1-micro",
            subtitle: "Same steps as the using 3-micro",
            materialcolor: Colors.redAccent,
            videoController: YoutubePlayerController(
              initialVideoId: '9mvZTPFO3dQ',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "FInish the experiment",
            subtitle: "Clean the machine and cover it with dust cover",
            materialcolor: Colors.green,
            videoController: YoutubePlayerController(
              initialVideoId: 'eMZLKuC715I',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      );
  }
}
