import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> burpoli = [
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the polisher",
    materialcolor: Colors.green[600],
  )),
  (video(
      title: "Basic operation of buelher polisher",
      subtitle: "Button introducton and operation process",
      materialcolor: Colors.green[300],
      videoController: YoutubePlayerController(
        initialVideoId: 'ofjHQkHbeEY', //时间在Main file里
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  video(
      title: "Polishing for meturllgical sample: Polishing",
      subtitle: "SOPs for meturllgical sample polishing",
      materialcolor: Colors.green[300],
      videoController: YoutubePlayerController(
        initialVideoId: 'd_KDtC-3exk',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
  video(
      title: "Polishing for meturllgical sample: Clean Sample",
      subtitle: "Clean sample between polish including rinse and dry",
      materialcolor: Colors.green[300],
      videoController: YoutubePlayerController(
        initialVideoId: 'qirmCi2Eob4',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
  video(
      title: "Polishing for meturllgical sample again",
      subtitle: "Whole process for polishing",
      materialcolor: Colors.green[300],
      videoController: YoutubePlayerController(
        initialVideoId: 'hhu2czLNItU',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Finish and Clean Up",
    subtitle: "Clean and organize after experiment finished",
    materialcolor: Colors.blue[600],
  )),
  video(
      title: "Finish the experiment",
      subtitle: "Clean the polisher",
      materialcolor: Colors.blue[300],
      videoController: YoutubePlayerController(
        initialVideoId: '_LYk24Cbouw',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
];
