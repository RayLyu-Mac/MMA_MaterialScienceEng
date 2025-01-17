import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> metPress = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Introduction to Mold 1/2",
      subtitle:
          "The two mold are corresponding to two holder on the left and right",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'dFGz37wZMjc',
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
      title: "Making a Metallurgical Mount I",
      subtitle: "Set the program and load the sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '9LTU5AuLjsM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Making a Metallurgical Mount II",
      subtitle: "Load resin, close the screw cap and press start",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'avUQcGp4mg0',
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
      subtitle: "Remove sample from the mold",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'lD1g-3Ys1ck',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))
];
