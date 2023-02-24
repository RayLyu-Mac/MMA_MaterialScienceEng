import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> abraCutter = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Get ready for the cutter",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Preparing: Install the blade",
      subtitle: "Install the proper blade for the cutting",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: '75K2xazuwMY',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  video(
      title: "Secure the sample I",
      subtitle: "Clamping Samples in the T-Slot Table",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'QNFyPMo75wc',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  video(
      title: "Secure the sample II",
      subtitle: "Using the Universal Clamps to Secure a Sample",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: '65OIC64QjP0',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the furnace",
    materialcolor: Colors.green,
  )),
  video(
      title: "Cutting sample I",
      subtitle: "Cutting a Sample in Automatic Mode",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '8N6aS5wIjDM',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
      title: "Cutting sample II",
      subtitle: "Cutting a Sample in Manual Mode",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'ouymWr2ASmw',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
    type: "tit",
    title: "Finish the experiment and clean up",
    subtitle: "How to operate the furnace",
    materialcolor: Colors.blue,
  )),
  (video(
      title: "Finish and Clean Up",
      subtitle: "Cleaning the Chamber",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'V1voTiBDT_o',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )))
];
