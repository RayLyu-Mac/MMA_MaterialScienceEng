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
          title: "Button introduction",
          subtitle: "The functions for buttons in the machine",
          materialcolor: Colors.blueAccent[100],
          videoController: YoutubePlayerController(
            initialVideoId: '55l4EbJigBU',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Placing a silicon carbide paper onto grinder",
            subtitle: "How to place the carbide paper into the machine",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'ev7GmelDE28',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Placing Chamfer onto the metellurgical mount",
            subtitle:
                "To avoid having the metallurgical mount catch the Silicon Carbide paper and for comfort when holding the metallurgical mount",
            materialcolor: Colors.yellowAccent,
            videoController: YoutubePlayerController(
              initialVideoId: 'YBAx6TrBzVM',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Grinding a Metallurgical Sample",
          subtitle: "SOP for grinding sample",
          materialcolor: Colors.red[400],
          videoController: YoutubePlayerController(
            initialVideoId: 'jtGHMjnJeyw',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Clean the sample",
          subtitle: "Need to clean sample between and at the end of grinding",
          materialcolor: Colors.orangeAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'xsdz5_ZYrZg',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Finish the experiment",
          subtitle: "Turn off the machine",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: 'TzZSSzLNrss',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
