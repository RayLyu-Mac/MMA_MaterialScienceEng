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
        subtitle: "Ready the Microscope",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Start the machine",
          subtitle:
              "Open the machine and set for the software and make the lens to 5X",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'lRqej_zJXDA',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Place the sample and focus",
            subtitle:
                "place the sample into the holder and use microscope to focus",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'r16aidGYrro',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Camera Setting",
        subtitle: "Camera setting for better inspection",
        materialcolor: Colors.indigo[600],
      ))
      ..add(
        video(
            title: "LV PAD EPI",
            subtitle: "Control the power to the light source",
            materialcolor: Colors.indigo[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'GlAKbw35zr0',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Camera setting",
          subtitle: "Parameters involved in getting a cleaer image",
          materialcolor: Colors.indigo[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'Dr1v9o1ytxc',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "SOPs for microscope inspection",
        materialcolor: Colors.green[600],
      ))
      ..add(video(
          title: "Annotation and measurement",
          subtitle: "Making annotation and measurement in the picture",
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'TF60cBFXxRA',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Taking a simple picture",
          subtitle: "Process of taking a simple image",
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'jMWjklrbv0w',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Adjusting picture when sample is not flat",
          subtitle: "adjust the picture when the sample is not flat",
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: '2zF7Mig1ATg',
            flags: YoutubePlayerFlags(
              autoPlay: false,
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
          subtitle: "Turn off the machine",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'hR6wQXvV0w0',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )));
  }
}
