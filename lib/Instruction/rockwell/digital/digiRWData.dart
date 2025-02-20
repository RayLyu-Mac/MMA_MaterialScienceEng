import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> digiRock = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Start and Calibration",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Start the experiemnt",
      subtitle: "Turn on the machine and set the program",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'SSov4nOaGgs',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Calibration: Choose the proper indenter",
      subtitle:
          "Choose the indenter based on your sample and do the calibration",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'hKK4G6LT8fE',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the tester",
    materialcolor: Colors.green,
  )),
  video(
      title: "Flat sample measurement",
      subtitle: "watch for beep!",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'YLfzJ8V5Cag',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Test for round sample",
      subtitle: "Place the appropriate platen onto the testing frame",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'vij2mqy36tY',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
      title: "Test for superficail sample",
      subtitle: "Search for proper scale for superficial sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '6tGXmptryXE',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
    type: "tit",
    title: "Finish and Clean Up",
    subtitle: "Clean and organize after experiment finished",
    materialcolor: Colors.blue,
  )),
  (video(
      title: "Finish the experiment",
      subtitle: "Shut down the machine and remove sample",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'xRf2dFPd-qA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )))
];
