import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'package:mma_mse/Instruction/videoformat.dart';

List<video> blueFdata = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Necessary preparation for the furnace",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Machine Preparation",
      subtitle: "Set up the temperature and time",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'md9WYfd808g',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Sample Placement",
      subtitle: "Place the sample in the right position inside the furnace",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'KVUl4Pkv37U',
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
      title: "Quench Sample",
      subtitle: "Quench sample to get desired microstructure",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'KZxKw7AxjZ4',
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
      title: "Shut down the machine and useful tools",
      subtitle: "Turn off the switch and some useful tools",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'gn4Eq6bGf18',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
