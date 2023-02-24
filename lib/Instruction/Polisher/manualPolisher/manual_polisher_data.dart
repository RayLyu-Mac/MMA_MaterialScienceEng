import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> manualPoli = [
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the polisher",
    materialcolor: Colors.green,
  )),
  (video(
      title: "Polish Sample in 3-Micro",
      subtitle:
          "Cover the sample with lubricant and polish the sample in circular motion",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'PB-dDLVnx-s', //时间在Main file里
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  video(
      title: "Clean sample after polished",
      subtitle: "Rinse the surface with water and dry the sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'cJO8wPSWNLs',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
  video(
      title: "Polish sample using 1-micro",
      subtitle: "Same steps as the using 3-micro",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '9mvZTPFO3dQ',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
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
      subtitle: "Clean the machine and cover it with dust cover",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'eMZLKuC715I',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
];
