import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> nikonData = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the Microscope",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Start the machine",
      subtitle:
          "Open the machine and set for the software and make the lens to 5X",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'lRqej_zJXDA',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  video(
      title: "Place the sample and focus",
      subtitle: "place the sample into the holder and use microscope to focus",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'r16aidGYrro',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Camera Setting",
    subtitle: "Camera setting for better inspection",
    materialcolor: Colors.indigo,
  )),
  video(
      title: "LV PAD EPI",
      subtitle: "Control the power to the light source",
      materialcolor: Colors.indigo,
      videoController: YoutubePlayerController(
        initialVideoId: 'GlAKbw35zr0',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
      title: "Camera setting",
      subtitle: "Parameters involved in getting a cleaer image",
      materialcolor: Colors.indigo,
      videoController: YoutubePlayerController(
        initialVideoId: 'Dr1v9o1ytxc',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  video(
    type: "tit",
    title: "Operation",
    subtitle: "SOPs for microscope inspection",
    materialcolor: Colors.green,
  ),
  (video(
      title: "Annotation and measurement",
      subtitle: "Making annotation and measurement in the picture",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'TF60cBFXxRA',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  (video(
      title: "Taking a simple picture",
      subtitle: "Process of taking a simple image",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'jMWjklrbv0w',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  (video(
      title: "Adjusting picture when sample is not flat",
      subtitle: "adjust the picture when the sample is not flat",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '2zF7Mig1ATg',
        flags: YoutubePlayerFlags(
          autoPlay: false,
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
      subtitle: "Turn off the machine",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'hR6wQXvV0w0',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )))
];
