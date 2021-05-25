import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
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
          title: "step 1: Brifely introduction of Polisher",
          subtitle: "introduction of Polisher",
          materialcolor: Colors.amber,
          videoController: YoutubePlayerController(
            initialVideoId: 'YI4dj70oLuM', //时间在Main file里
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Step 2: Dash Board Introduction",
            subtitle: "Introduce the function of each button",
            materialcolor: Colors.amber,
            videoController: YoutubePlayerController(
              initialVideoId: '10VL1ZBDe_4',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Step 3: Polish with 3-Micron Diamond Paste",
            subtitle: "Begin polish with rougher paste",
            materialcolor: Colors.orange[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'bO1Y0nYougA',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "step 4: Washing and Rinsing the sample after each polish",
            subtitle:
                "Make Sure to wash and rinse the sample after the polish ",
            materialcolor: Colors.orangeAccent[700],
            videoController: YoutubePlayerController(
              initialVideoId: 'NW2WctbMRSM',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "step 5: Dry the sample",
            subtitle: "dry the sample properly",
            materialcolor: Colors.blueGrey[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'TaYvrKsKB2E',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "step 6: Polish with 1-Micron Diamond Paste",
            subtitle: "polish with smoother paste",
            materialcolor: Colors.blueGrey,
            videoController: YoutubePlayerController(
              initialVideoId: 'td-n2COgNOc',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "step 7: Washing and Rinsing the sample after each polish",
            subtitle: "Make Sure to wash and rinse the sample after the polish",
            materialcolor: Colors.lightGreen,
            videoController: YoutubePlayerController(
              initialVideoId: 'KP5-aSmR_B0',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "step 8: Dry the sample",
            subtitle: "dry the sample properly",
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
            title: "step 9: Clean the Polisher",
            subtitle: "Clean the polisher with tissue",
            materialcolor: Colors.redAccent,
            videoController: YoutubePlayerController(
              initialVideoId: 'NRk7PDQJ_O0',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      );
  }
}
