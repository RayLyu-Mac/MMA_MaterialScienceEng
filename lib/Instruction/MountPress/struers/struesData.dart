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
        subtitle: "Ready the mount press machine",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Mold 1/2 Intro",
          subtitle: "1/2 is corresponding to the mold on the left/right",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'HNiMCa-Fhls',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Set the program and load the sample",
            subtitle: "Choose the mold and put sample into the machine",
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: '7JiFHZEFFLs',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the mount press",
        materialcolor: Colors.green[600],
      ))
      ..add(
        video(
            title: "Resin, clean and start",
            subtitle:
                "Add resin into cavity, clean the screw cap and press start",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'DCi4ycJcZMo',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Finish and Clean Up",
        subtitle: "Clean and organize after experiment finished",
        materialcolor: Colors.blue[600],
      ))
      ..add(video(
          title: "Finish the experiment",
          subtitle: "Removing the sample from the mold",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'VoBgbTqtvzU',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )));
  }
}
