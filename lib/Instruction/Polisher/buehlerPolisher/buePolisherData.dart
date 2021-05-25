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
          title: "Basic operation of buelher polisher",
          subtitle: "Button introducton and operation process",
          materialcolor: Colors.amber,
          videoController: YoutubePlayerController(
            initialVideoId: 'ofjHQkHbeEY', //时间在Main file里
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Polishing for meturllgical sample: Polishing",
            subtitle: "SOPs for meturllgical sample polishing",
            materialcolor: Colors.amber,
            videoController: YoutubePlayerController(
              initialVideoId: 'd_KDtC-3exk',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Polishing for meturllgical sample: Clean Sample",
            subtitle: "Clean sample between polish including rinse and dry",
            materialcolor: Colors.orange[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'qirmCi2Eob4',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Polishing for meturllgical sample again",
            subtitle: "Whole process for polishing",
            materialcolor: Colors.orangeAccent[700],
            videoController: YoutubePlayerController(
              initialVideoId: 'hhu2czLNItU',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Finish the experiment",
            subtitle: "Clean the polisher",
            materialcolor: Colors.lightGreen,
            videoController: YoutubePlayerController(
              initialVideoId: '_LYk24Cbouw',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      );
  }
}
