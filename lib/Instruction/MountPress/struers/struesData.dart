import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> struesData = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Mold 1/2 Intro",
      subtitle: "1/2 is corresponding to the mold on the left/right",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'HNiMCa-Fhls',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  video(
      title: "Set the program and load the sample",
      subtitle: "Choose the mold and put sample into the machine",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: '7JiFHZEFFLs',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the mount press",
    materialcolor: Colors.green,
  )),
  video(
      title: "Resin, clean and start",
      subtitle: "Add resin into cavity, clean the screw cap and press start",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'DCi4ycJcZMo',
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
      subtitle: "Removing the sample from the mold",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'VoBgbTqtvzU',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))
];
