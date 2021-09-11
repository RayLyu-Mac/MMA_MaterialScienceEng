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
          title: "Introduction to Mold 1/2",
          subtitle:
              "The two mold are corresponding to two holder on the left and right",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'dFGz37wZMjc',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the mount press",
        materialcolor: Colors.green[600],
      ))
      ..add(
        video(
            title: "Making a Metallurgical Mount I",
            subtitle: "Set the program and load the sample",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: '9LTU5AuLjsM',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Making a Metallurgical Mount II",
            subtitle: "Load resin, close the screw cap and press start",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'avUQcGp4mg0',
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
          subtitle: "Remove sample from the mold",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'lD1g-3Ys1ck',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
