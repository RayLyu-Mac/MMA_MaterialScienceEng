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
        title: "Sample Measurement",
        subtitle: "Method for measure sample in different size",
        materialcolor: Colors.amber,
      ))
      ..add(video(
          title: "Flat Sample Measurement",
          subtitle: "Flat Sample Measurement",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'YI4dj70oLuM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Round Sample Measurement",
            subtitle: "Round Sample Measurement",
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: '10VL1ZBDe_4',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Extensometer",
        subtitle: "Intro and how to use",
        materialcolor: Colors.deepOrange[600],
      ))
      ..add(
        video(
            title: "Introduction to Extensometer",
            subtitle: "Component and placement",
            materialcolor: Colors.deepOrange[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'TaYvrKsKB2E',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Extensometer used for round /flat sample and installing",
            subtitle: "Usage for extensometer",
            materialcolor: Colors.deepOrange[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'td-n2COgNOc',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Preparation",
        subtitle: "Set Up the machine & Component",
        materialcolor: Colors.pink[600],
      ))
      ..add(
        video(
            title: "Set Up Machine",
            subtitle: "Activate the machine and sofrware",
            materialcolor: Colors.pink[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'bO1Y0nYougA',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Load Sample",
            subtitle: "Make Sure to keep your hands out from the pich hole",
            materialcolor: Colors.pink[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'NW2WctbMRSM',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Round Grid Installation",
            subtitle: "How to use a round grip in MTS test frame",
            materialcolor: Colors.pink[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'KP5-aSmR_B0',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the cutter",
        materialcolor: Colors.green[600],
      ))
      ..add(
        video(
            title: "Begin the Test",
            subtitle: "Action needed for both machine and the software",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: '6FTRWy_q2-k',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Observation and Save the data",
            subtitle: "Observing the stress strength curve and save the data",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'NRk7PDQJ_O0',
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
      ..add(
        video(
            title: " Finish the test",
            subtitle: "Turn off the machine and the software",
            materialcolor: Colors.blue[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'hLD1NP6XWz8',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      );
  }
}
