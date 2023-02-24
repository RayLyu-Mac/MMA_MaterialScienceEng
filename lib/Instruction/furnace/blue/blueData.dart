import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
      videoController: YoutubePlayerController(
        initialVideoId: 'md9WYfd808g',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  video(
      title: "Sample Placement",
      subtitle: "Place the sample in the right position inside the furnace",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'KVUl4Pkv37U',
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
      title: "Quench Sample",
      subtitle: "Quench sample to get desired microstructure",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'KZxKw7AxjZ4',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
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
      videoController: YoutubePlayerController(
        initialVideoId: 'gn4Eq6bGf18',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )))
];
