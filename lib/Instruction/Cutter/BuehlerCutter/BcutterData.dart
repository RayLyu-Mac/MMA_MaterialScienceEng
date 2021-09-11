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
        subtitle: "How to place the component in place",
        materialcolor: Colors.amber[300],
      ))
      ..add(video(
          type: "ins",
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
            type: "ins",
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
          type: "ins",
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
          type: "ins",
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
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the cutter",
        materialcolor: Colors.green[300],
      ))
      ..add(
        video(
            type: "ins",
            title: "Precision Control",
            subtitle: "Precision control of the position of the samples",
            materialcolor: Colors.green[400],
            videoController: YoutubePlayerController(
              initialVideoId: '1eGMt-H2CNU',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          type: "ins",
          title: "Running for automated cut",
          subtitle: "Process of automated cut",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: 'cploFTTCrig',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          type: "ins",
          title: "Serial cut",
          subtitle: "Process of making a serial cut",
          materialcolor: Colors.greenAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'PDkmYVFGIjM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Finish and Clean Up",
        subtitle: "Clean and organize after experiment finished",
        materialcolor: Colors.blue[300],
      ))
      ..add(video(
          type: "ins",
          title: "Finish the experiment",
          subtitle: "Dissemble the chuck and clean the cutter",
          materialcolor: Colors.blue,
          videoController: YoutubePlayerController(
            initialVideoId: 'k9TSrAnF9dg',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
