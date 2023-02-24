import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:mma_mse/Instruction/videoformat.dart';

List<video> etchingData = [
  (video(
    type: "tit",
    title: "Preparation: PPE and be aware of safety equipment",
    subtitle: "Gear up for etching",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Preparation before start",
      subtitle: "Wear the PPE, Set up container and get acid",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'F3vNsclDaxo',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "Etching SOPs",
    materialcolor: Colors.green,
  )),
  video(
      title: "Start the etching",
      subtitle:
          "Use Syringe dispense the etchant onto the surface and make sure it covers the surface",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '53XXl1vDOWs',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )),
  video(
      title: "Rinse the sample",
      subtitle:
          "After the etching complete rinse it under tap water and blow dry",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'JR_7n8-J99w',
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
  (video(
      title: "Finish the experiment I: Clean Up",
      subtitle: "Clean the container and pour into the waste backet",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'TSZ3qKA27EM',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
      title: "Finish the experiment II: Organize Equipment",
      subtitle: "Place all used tools back into place",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'NtzRB1_2bTo',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )))
];
