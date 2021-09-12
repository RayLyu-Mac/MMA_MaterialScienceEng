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
        title: "Preparation: PPE and be aware of safety equipment",
        subtitle: "Gear up for etching",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Preparation before start",
          subtitle: "Wear the PPE, Set up container and get acid",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'F3vNsclDaxo',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "Etching SOPs",
        materialcolor: Colors.green[600],
      ))
      ..add(
        video(
            title: "Start the etching",
            subtitle:
                "Use Syringe dispense the etchant onto the surface and make sure it covers the surface",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: '53XXl1vDOWs',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Rinse the sample",
            subtitle:
                "After the etching complete rinse it under tap water and blow dry",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'JR_7n8-J99w',
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
          title: "Finish the experiment I: Clean Up",
          subtitle: "Clean the container and pour into the waste backet",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'TSZ3qKA27EM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Finish the experiment II: Organize Equipment",
          subtitle: "Place all used tools back into place",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'NtzRB1_2bTo',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
