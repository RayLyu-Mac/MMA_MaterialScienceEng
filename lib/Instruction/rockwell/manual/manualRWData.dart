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
          title: "Calibration I: preparation",
          subtitle:
              "Adjust the load, choose the right indenter and apply preload",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'm_XPkfJ5Dpg',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Calibration II: Zero the dial and apply major load",
            subtitle: "Place sample into the holder and adjust the load",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: '8ptfav5a_sY',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Test on flat sample",
            subtitle: "SOP for flat sample measurement",
            materialcolor: Colors.pink[400],
            videoController: YoutubePlayerController(
              initialVideoId: '14wU2-1w_4g',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Test on round sample",
          subtitle: "SOP for round sample measurement",
          materialcolor: Colors.red[400],
          videoController: YoutubePlayerController(
            initialVideoId: '-pfU2_Rs9qY',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Finish the Test and Clean Up",
          subtitle: "Shut down the machine and unload the sample",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: '4J7MmuzXo2w',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )));
  }
}
