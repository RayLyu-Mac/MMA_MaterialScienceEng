import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'package:mma_mse/Instruction/videoformat.dart';

List<video> manualGrinderData = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the grinder",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Button introduction",
      subtitle: "The functions for buttons in the machine",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '55l4EbJigBU',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Placing a silicon carbide paper onto grinder",
      subtitle: "How to place the carbide paper into the machine",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'ev7GmelDE28',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Placing Chamfer onto the metellurgical mount",
      subtitle:
          "To avoid having the metallurgical mount catch the Silicon Carbide paper and for comfort when holding the metallurgical mount",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'YBAx6TrBzVM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "SOPs for grinding a meturllgical sample",
    materialcolor: Colors.green,
  )),
  (video(
      title: "Grinding a Metallurgical Sample",
      subtitle: "SOP for grinding sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'jtGHMjnJeyw',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Clean the sample",
      subtitle: "Need to clean sample between and at the end of grinding",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'xsdz5_ZYrZg',
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
      subtitle: "Turn off the machine",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'TzZSSzLNrss',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
