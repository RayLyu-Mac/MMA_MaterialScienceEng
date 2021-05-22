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
          title: "Preparation before start",
          subtitle: "Set the program and clean the chamber",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'Uieb08dZJ10',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Start the pressing",
            subtitle: "Press the button and press will automatically start",
            materialcolor: Colors.red[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'iwIrttSuW5k',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Making a Metallurgical Mount",
            subtitle: "High Temperature 175 degree C will be applied",
            materialcolor: Colors.pink[400],
            videoController: YoutubePlayerController(
              initialVideoId: '_RAZC-_Zpdk',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Remove sample from the mold",
          subtitle: "Follow th emessage display in the screen",
          materialcolor: Colors.green[400],
          videoController: YoutubePlayerController(
            initialVideoId: 'qnVvgwEi_z0',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
