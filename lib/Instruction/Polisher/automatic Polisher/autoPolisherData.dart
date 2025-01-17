import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> autoPoli = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Set up the machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Software Preparation",
      subtitle: "Fina a suitable program based on the sample",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'dR2Jg6yBi30',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Grinding Preparation",
      subtitle: "Placing the holder and the sample",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'uNo8M46WMFM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "Grinding Washing and Polishing",
    materialcolor: Colors.green,
  )),
  video(
      title: "After Grinding Finished",
      subtitle: "Start with 100X and use the joystick to focus",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '_pomg_h4HpA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
      title: "Cleaning",
      subtitle: "Clean the Sample and Holder to remove any debris and the base",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'I6sSbXVEq2Y',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Cloth",
      subtitle: "Placing Cloth onto the Base and Charging the Cloth",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'WQk9IU3Rtp8',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Polishing",
      subtitle: "Polishing the sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'SfSke_g0hKM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Polishing the sample",
      subtitle:
          "Find proper polishing media and set corresponding program on the machine",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'yqwMxOa71AY',
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
      title: "Finish the Test and Clean Up",
      subtitle: "Cleaning the machine and the sample",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'gD1eNvOUiNM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
