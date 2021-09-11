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
        subtitle: "Start and Calibration",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Start the experiemnt",
          subtitle: "Turn on the machine and set the program",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'SSov4nOaGgs',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Calibration: Choose the proper indenter",
          subtitle:
              "Choose the indenter based on your sample and do the calibration",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'hKK4G6LT8fE',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the tester",
        materialcolor: Colors.green[600],
      ))
      ..add(
        video(
            title: "Flat sample measurement",
            subtitle: "watch for beep!",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'YLfzJ8V5Cag',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Test for round sample",
            subtitle: "Place the appropriate platen onto the testing frame",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'vij2mqy36tY',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Test for superficail sample",
          subtitle: "Search for proper scale for superficial sample",
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: '6tGXmptryXE',
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
          subtitle: "Shut down the machine and remove sample",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'xRf2dFPd-qA',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
