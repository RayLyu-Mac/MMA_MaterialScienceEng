import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/videoformat.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

List<video> utmData = [
  (video(
    type: "tit",
    title: "Sample Measurement",
    subtitle: "Method for measure sample in different size",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Flat Sample Measurement",
      subtitle: "Flat Sample Measurement",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'YI4dj70oLuM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Round Sample Measurement",
      subtitle: "Round Sample Measurement",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '10VL1ZBDe_4',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Extensometer",
    subtitle: "Intro and how to use",
    materialcolor: Colors.deepOrange,
  )),
  video(
      title: "Introduction to Extensometer",
      subtitle: "Component and placement",
      materialcolor: Colors.deepOrange,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'TaYvrKsKB2E',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Extensometer used for round /flat sample and installing",
      subtitle: "Usage for extensometer",
      materialcolor: Colors.deepOrange,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'td-n2COgNOc',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Set Up the machine & Component",
    materialcolor: Colors.pink,
  )),
  video(
      title: "Set Up Machine",
      subtitle: "Activate the machine and sofrware",
      materialcolor: Colors.pink,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'bO1Y0nYougA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Load Sample",
      subtitle: "Make Sure to keep your hands out from the pich hole",
      materialcolor: Colors.pink,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'NW2WctbMRSM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Round Grid Installation",
      subtitle: "How to use a round grip in MTS test frame",
      materialcolor: Colors.pink,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'KP5-aSmR_B0',
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
      title: "Begin the Test",
      subtitle: "Action needed for both machine and the software",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '6FTRWy_q2-k',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Observation and Save the data",
      subtitle: "Observing the stress strength curve and save the data",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'NRk7PDQJ_O0',
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
      title: " Finish the test",
      subtitle: "Turn off the machine and the software",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'hLD1NP6XWz8',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
];
