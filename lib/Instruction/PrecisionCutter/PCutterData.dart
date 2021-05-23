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
          title: "Assemble Blade",
          subtitle: "Put the blade into postion and use screw driver",
          materialcolor: Colors.yellow[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'pdIl5KIRY7o',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Load Sample",
          subtitle: "Loose the screw and olace sample toward front",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'dbKrMrkOSG4',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Position sample for cutting",
            subtitle:
                "Press X to move sample and Press Y to move sample closer to the blade",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: '2kJGtB1n4Sc',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Cutting a sample",
            subtitle: "Set the cutting distance",
            materialcolor: Colors.pink[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'Vrnl9qqsdis',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Sectioning the Sample",
          subtitle: "Way to Sectioning the Sample",
          materialcolor: Colors.red[400],
          videoController: YoutubePlayerController(
            initialVideoId: '76jcSgLCns0',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Removing the sample and the blade",
          subtitle: "Move sample away and use screwer driver",
          materialcolor: Colors.blueAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'xRCRBQCEGYs',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Cleaning the Instrument",
          subtitle:
              "Wipe: Interface button, inside the safty shield, inside of chamber. Place all tools back on top of the instrument",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: 'BZiXUXT22dI',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
