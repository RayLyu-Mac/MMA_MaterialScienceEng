import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> struesData = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Mold 1/2 Intro",
      subtitle: "1/2 is corresponding to the mold on the left/right",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'HNiMCa-Fhls',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Set the program and load the sample",
      subtitle: "Choose the mold and put sample into the machine",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '7JiFHZEFFLs',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the mount press",
    materialcolor: Colors.green,
  )),
  video(
      title: "Resin, clean and start",
      subtitle: "Add resin into cavity, clean the screw cap and press start",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'DCi4ycJcZMo',
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
      subtitle: "Removing the sample from the mold",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'VoBgbTqtvzU',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))
];
