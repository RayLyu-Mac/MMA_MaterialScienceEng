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
          title: "Step 1A: Flat Sample Measurement",
          subtitle: "Flat Sample Measurement",
          materialcolor: Colors.amber,
          videoController: YoutubePlayerController(
            initialVideoId: 'YI4dj70oLuM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Step 1B: Round Sample Measurement",
            subtitle: "Round Sample Measurement",
            materialcolor: Colors.amber,
            videoController: YoutubePlayerController(
              initialVideoId: '10VL1ZBDe_4',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Step 2: Set Up Machine",
            subtitle: "Activate the machine and sofrware",
            materialcolor: Colors.orange[400],
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
            title: "Step 3: Load Sample",
            subtitle: "Make Sure to keep your hands out from the pich hole",
            materialcolor: Colors.orangeAccent[700],
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
            title: "Introduction to Extensometer",
            subtitle: "Component and placement",
            materialcolor: Colors.blueGrey[400],
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
            materialcolor: Colors.blueGrey,
            videoController: YoutubePlayerController(
              initialVideoId: 'td-n2COgNOc',
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
            materialcolor: Colors.lightGreen,
            videoController: YoutubePlayerController(
              initialVideoId: 'KP5-aSmR_B0',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Step 4: Begin the Test",
            subtitle: "Action needed for both machine and the software",
            materialcolor: Colors.red,
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
            title: "Step 5: Observation and Save the data",
            subtitle: "Observing the stress strength curve and save the data",
            materialcolor: Colors.redAccent,
            videoController: YoutubePlayerController(
              initialVideoId: 'NRk7PDQJ_O0',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Step 6: Finish the test",
            subtitle: "Turn off the machine and the software",
            materialcolor: Colors.greenAccent,
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
