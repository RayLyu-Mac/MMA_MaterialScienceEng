import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> digiRock = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Start and Calibration",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Start the experiemnt",
      subtitle: "Turn on the machine and set the program",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'SSov4nOaGgs',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
      title: "Calibration: Choose the proper indenter",
      subtitle:
          "Choose the indenter based on your sample and do the calibration",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'hKK4G6LT8fE',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the tester",
    materialcolor: Colors.green,
  )),
  video(
      title: "Flat sample measurement",
      subtitle: "watch for beep!",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'YLfzJ8V5Cag',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  video(
      title: "Test for round sample",
      subtitle: "Place the appropriate platen onto the testing frame",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'vij2mqy36tY',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
      title: "Test for superficail sample",
      subtitle: "Search for proper scale for superficial sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '6tGXmptryXE',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
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
      subtitle: "Shut down the machine and remove sample",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'xRf2dFPd-qA',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )))
];
