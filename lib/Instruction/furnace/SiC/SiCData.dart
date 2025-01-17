import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> sicFData = [
  (video(
    type: "tit",
    title: "Tool Introduction",
    subtitle: "Necessary tools needed for operation",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Tools used for assisting the process",
      subtitle: "Several useful tools",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'd9L0nf1U8yc',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Necessary preparation for the furnace",
    materialcolor: Colors.red,
  )),
  (video(
      title: "Machine Preparation",
      subtitle:
          "Set up the temperature(Actual Temp: Top value, Set Point: Bottom value)",
      materialcolor: Colors.red,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'mjmuxQAqHZE',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Sample Placement",
      subtitle: "Wearing all PPE and insert sample into the furnace",
      materialcolor: Colors.red,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 's5G7AbokcYE',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the furnace",
    materialcolor: Colors.green,
  )),
  (video(
      title: "Operating the furnace door",
      subtitle: "Make sure don't let the interior of the door facing you",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'fMuzfMrqQag',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      type: "tit",
      title: "Finish the experiment and clean up",
      subtitle: "How to operate the furnace",
      materialcolor: Colors.blue)),
  (video(
      title: "Removing the sample and place",
      subtitle:
          "Turn off the furnace and place the sample on the sand and mark the time",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '6trERmdj-rA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
