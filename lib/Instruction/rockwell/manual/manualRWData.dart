import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> manualRWData = [
  (video(
    type: "tit",
    title: "Calibration",
    subtitle: "How to place the component in place",
    materialcolor: Colors.amber,
  )),
  video(
      title: "Calibration I: preparation",
      subtitle: "Adjust the load, choose the right indenter and apply preload",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'm_XPkfJ5Dpg',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Calibration II: Zero the dial and apply major load",
      subtitle: "Place sample into the holder and adjust the load",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '8ptfav5a_sY',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the cutter",
    materialcolor: Colors.green,
  )),
  video(
      title: "Test on flat sample",
      subtitle: "SOP for flat sample measurement",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '14wU2-1w_4g',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Test on round sample",
      subtitle: "SOP for round sample measurement",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '-pfU2_Rs9qY',
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
  (video(
      title: "Finish the Test and Clean Up",
      subtitle: "Shut down the machine and unload the sample",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '4J7MmuzXo2w',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )))
];
