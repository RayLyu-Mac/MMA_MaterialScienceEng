import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
          title: "Preparing: Install the blade",
          subtitle: "Install the proper blade for the cutting",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: '75K2xazuwMY',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Secure the sample I",
            subtitle: "Clamping Samples in the T-Slot Table",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'QNFyPMo75wc',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Secure the sample II",
            subtitle: "Using the Universal Clamps to Secure a Sample",
            materialcolor: Colors.amber[600],
            videoController: YoutubePlayerController(
              initialVideoId: '65OIC64QjP0',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Cutting sample I",
            subtitle: "Cutting a Sample in Automatic Mode",
            materialcolor: Colors.pink[400],
            videoController: YoutubePlayerController(
              initialVideoId: '8N6aS5wIjDM',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Cutting sample II",
          subtitle: "Cutting a Sample in Manual Mode",
          materialcolor: Colors.pink[600],
          videoController: YoutubePlayerController(
            initialVideoId: 'ouymWr2ASmw',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Finish and Clean Up",
          subtitle: "Cleaning the Chamber",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: 'V1voTiBDT_o',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
