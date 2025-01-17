import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> nikonData = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the Microscope",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Start the machine",
      subtitle:
          "Open the machine and set for the software and make the lens to 5X",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'lRqej_zJXDA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Place the sample and focus",
      subtitle: "place the sample into the holder and use microscope to focus",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'r16aidGYrro',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Camera Setting",
    subtitle: "Camera setting for better inspection",
    materialcolor: Colors.indigo,
  )),
  video(
      title: "LV PAD EPI",
      subtitle: "Control the power to the light source",
      materialcolor: Colors.indigo,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'GlAKbw35zr0',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
      title: "Camera setting",
      subtitle: "Parameters involved in getting a cleaer image",
      materialcolor: Colors.indigo,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'Dr1v9o1ytxc',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
    type: "tit",
    title: "Operation",
    subtitle: "SOPs for microscope inspection",
    materialcolor: Colors.green,
  ),
  (video(
      title: "Annotation and measurement",
      subtitle: "Making annotation and measurement in the picture",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'TF60cBFXxRA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Taking a simple picture",
      subtitle: "Process of taking a simple image",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'jMWjklrbv0w',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Adjusting picture when sample is not flat",
      subtitle: "adjust the picture when the sample is not flat",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '2zF7Mig1ATg',
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
        videoId: 'hR6wQXvV0w0',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
