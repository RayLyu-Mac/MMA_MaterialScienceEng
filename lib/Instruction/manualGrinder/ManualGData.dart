import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video {
  String title;
  String subtitle;
  YoutubePlayerController videoController;
  Color materialcolor;
  String type;

  video({
    this.title,
    this.subtitle,
    this.type,
    this.materialcolor,
    this.videoController,
  });
  List<video> videoList() {
    List videoData = List<video>();
    return videoData
      ..add(video(
        type: "tit",
        title: "Preparation",
        subtitle: "Ready the grinder",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Button introduction",
          subtitle: "The functions for buttons in the machine",
          materialcolor: Colors.amber[300],
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
            materialcolor: Colors.amber[300],
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
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'YBAx6TrBzVM',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "SOPs for grinding a meturllgical sample",
        materialcolor: Colors.green[600],
      ))
      ..add(video(
          title: "Grinding a Metallurgical Sample",
          subtitle: "SOP for grinding sample",
          materialcolor: Colors.green[300],
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
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'xsdz5_ZYrZg',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Finish and Clean Up",
        subtitle: "Clean and organize after experiment finished",
        materialcolor: Colors.blue[600],
      ))
      ..add(video(
          title: "Finish the experiment",
          subtitle: "Turn off the machine",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'TzZSSzLNrss',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
