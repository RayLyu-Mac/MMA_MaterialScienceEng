import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> EcoPress = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Preparation before start",
      subtitle: "Set the program and clean the chamber",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'Uieb08dZJ10',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the mount press",
    materialcolor: Colors.green,
  )),
  video(
      title: "Start the pressing",
      subtitle: "Press the button and press will automatically start",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'iwIrttSuW5k',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
  video(
      title: "Making a Metallurgical Mount",
      subtitle: "High Temperature 175 degree C will be applied",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '_RAZC-_Zpdk',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  video(
      title: "Remove sample from the mold",
      subtitle: "Follow th emessage display in the screen",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'qnVvgwEi_z0',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))
];
