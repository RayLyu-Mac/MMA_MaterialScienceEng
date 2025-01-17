import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> precCutter = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Necessary tools needed for operation",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Assemble Blade",
      subtitle: "Put the blade into postion and use screw driver",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'pdIl5KIRY7o',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Load Sample",
      subtitle: "Loose the screw and olace sample toward front",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'dbKrMrkOSG4',
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
  video(
      title: "Position sample for cutting",
      subtitle:
          "Press X to move sample and Press Y to move sample closer to the blade",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '2kJGtB1n4Sc',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Cutting a sample",
      subtitle: "Set the cutting distance",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'Vrnl9qqsdis',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
      title: "Sectioning the Sample",
      subtitle: "Way to Sectioning the Sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '76jcSgLCns0',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
    type: "tit",
    title: "Finish the experiment and clean up",
    subtitle: "How to operate the furnace",
    materialcolor: Colors.blue,
  )),
  (video(
      title: "Removing the sample and the blade",
      subtitle: "Move sample away and use screwer driver",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'xRCRBQCEGYs',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Cleaning the Instrument",
      subtitle:
          "Wipe: Interface button, inside the safty shield, inside of chamber. Place all tools back on top of the instrument",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'BZiXUXT22dI',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
