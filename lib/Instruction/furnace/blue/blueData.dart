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
        subtitle: "Necessary preparation for the furnace",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Machine Preparation",
          subtitle: "Set up the temperature and time",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'md9WYfd808g',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Sample Placement",
            subtitle:
                "Place the sample in the right position inside the furnace",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'KVUl4Pkv37U',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the furnace",
        materialcolor: Colors.green[600],
      ))
      ..add(
        video(
            title: "Quench Sample",
            subtitle: "Quench sample to get desired microstructure",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'KZxKw7AxjZ4',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Finish the experiment and clean up",
        subtitle: "How to operate the furnace",
        materialcolor: Colors.blue[600],
      ))
      ..add(video(
          title: "Shut down the machine and useful tools",
          subtitle: "Turn off the switch and some useful tools",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'gn4Eq6bGf18',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
