import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> EcoPress = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Preparation before start",
      subtitle: "Set the program and clean the chamber",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'Uieb08dZJ10',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the mount press",
    materialcolor: Colors.green,
  )),
  video(
      title: "Start the pressing",
      subtitle: "Press the button and press will automatically start",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'iwIrttSuW5k',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Making a Metallurgical Mount",
      subtitle: "High Temperature 175 degree C will be applied",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '_RAZC-_Zpdk',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Remove sample from the mold",
      subtitle: "Follow th emessage display in the screen",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'qnVvgwEi_z0',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))
];
