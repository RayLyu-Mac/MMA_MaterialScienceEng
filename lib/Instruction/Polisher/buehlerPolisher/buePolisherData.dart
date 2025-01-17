import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> burpoli = [
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the polisher",
    materialcolor: Colors.green,
  )),
  (video(
      title: "Basic operation of buelher polisher",
      subtitle: "Button introducton and operation process",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'ofjHQkHbeEY',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Polishing for meturllgical sample: Polishing",
      subtitle: "SOPs for meturllgical sample polishing",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'd_KDtC-3exk',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Polishing for meturllgical sample: Clean Sample",
      subtitle: "Clean sample between polish including rinse and dry",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'qirmCi2Eob4',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Polishing for meturllgical sample again",
      subtitle: "Whole process for polishing",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'hhu2czLNItU',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Finish and Clean Up",
    subtitle: "Clean and organize after experiment finished",
    materialcolor: Colors.blue,
  )),
  video(
      title: "Finish the experiment",
      subtitle: "Clean the polisher",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '_LYk24Cbouw',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
];
