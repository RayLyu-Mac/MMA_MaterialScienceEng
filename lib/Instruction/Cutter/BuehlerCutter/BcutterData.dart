import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> bueCutterData = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "How to place the component in place",
    materialcolor: Colors.amber,
  )),
  (video(
      type: "ins",
      title: "Secure the blade",
      subtitle:
          "Be careful, the blade is easily break during put on and take off",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'MzD4ooJuOV4',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      type: "ins",
      title: "Placing an Abrasive Blade onto to the Motor Shaft",
      subtitle: "Alignment shaft, washer, blade",
      materialcolor: Colors.orange,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '-nClP_NYMEU',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
      type: "ins",
      title: "Assembling Vise",
      subtitle: "Process of secure sample into the cutter",
      materialcolor: Colors.orange,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'BeHxZQ6Bh70',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      type: "ins",
      title: "Assemble for round sample",
      subtitle: "Process of secure round sample into the cutter",
      materialcolor: Colors.orange,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'Eo6A4kceSCE',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the cutter",
    materialcolor: Colors.green,
  )),
  video(
      type: "ins",
      title: "Precision Control",
      subtitle: "Precision control of the position of the samples",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '1eGMt-H2CNU',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
      type: "ins",
      title: "Running for automated cut",
      subtitle: "Process of automated cut",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'cploFTTCrig',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      type: "ins",
      title: "Serial cut",
      subtitle: "Process of making a serial cut",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'PDkmYVFGIjM',
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
      type: "ins",
      title: "Finish the experiment",
      subtitle: "Dissemble the chuck and clean the cutter",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'k9TSrAnF9dg',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )))
];
