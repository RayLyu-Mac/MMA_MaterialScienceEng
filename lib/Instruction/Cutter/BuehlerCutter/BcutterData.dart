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
          title: "Secure the blade",
          subtitle:
              "Be careful, the blade is easily break during put on and take off",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'MzD4ooJuOV4',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Precision Control",
            subtitle: "Precision control of the position of the samples",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: '1eGMt-H2CNU',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Placing an Abrasive Blade onto to the Motor Shaft",
            subtitle: "Alignment shaft, washer, blade",
            materialcolor: Colors.orange[400],
            videoController: YoutubePlayerController(
              initialVideoId: '-nClP_NYMEU',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Assembling Vise",
          subtitle: "Process of secure sample into the cutter",
          materialcolor: Colors.orangeAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'BeHxZQ6Bh70',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Assemble for round sample",
          subtitle: "Process of secure round sample into the cutter",
          materialcolor: Colors.orangeAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'Eo6A4kceSCE',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Running for automated cut",
          subtitle: "Process of automated cut",
          materialcolor: Colors.red,
          videoController: YoutubePlayerController(
            initialVideoId: 'cploFTTCrig',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Serial cut",
          subtitle: "Process of making a serial cut",
          materialcolor: Colors.redAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'PDkmYVFGIjM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "FInish the experiment",
          subtitle: "Dissemble the chuck and clean the cutter",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: 'k9TSrAnF9dg',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
