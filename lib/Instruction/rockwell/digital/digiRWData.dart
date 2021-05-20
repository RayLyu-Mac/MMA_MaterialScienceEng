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
          title: "Tools used for assisting the process",
          subtitle: "Several useful tools",
          materialcolor: Colors.blue[400],
          videoController: YoutubePlayerController(
            initialVideoId: 'd9L0nf1U8yc',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Machine Preparation",
          subtitle:
              "Set up the temperature(Actual Temp: Top value, Set Point: Bottom value)",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'mjmuxQAqHZE',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Sample Placement",
            subtitle: "Wearing all PPE and insert sample into the furnace",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: 's5G7AbokcYE',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Operating the furnace door",
            subtitle: "Make sure don't let the interior of the door facing you",
            materialcolor: Colors.red[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'fMuzfMrqQag',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Removing the sample and place",
          subtitle:
              "Turn off the furnace and place the sample on the sand and mark the time",
          materialcolor: Colors.green[400],
          videoController: YoutubePlayerController(
            initialVideoId: '6trERmdj-rA',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
