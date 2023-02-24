import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> metPress = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Introduction to Mold 1/2",
      subtitle:
          "The two mold are corresponding to two holder on the left and right",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'dFGz37wZMjc',
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
      title: "Making a Metallurgical Mount I",
      subtitle: "Set the program and load the sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '9LTU5AuLjsM',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  video(
      title: "Making a Metallurgical Mount II",
      subtitle: "Load resin, close the screw cap and press start",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'avUQcGp4mg0',
        flags: YoutubePlayerFlags(
          autoPlay: true,
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
      subtitle: "Remove sample from the mold",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'lD1g-3Ys1ck',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))
];
