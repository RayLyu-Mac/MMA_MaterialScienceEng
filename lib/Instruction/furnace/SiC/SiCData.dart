import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> sicFData = [
  (video(
    type: "tit",
    title: "Tool Introduction",
    subtitle: "Necessary tools needed for operation",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Tools used for assisting the process",
      subtitle: "Several useful tools",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'd9L0nf1U8yc',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Necessary preparation for the furnace",
    materialcolor: Colors.redAccent,
  )),
  (video(
      title: "Machine Preparation",
      subtitle:
          "Set up the temperature(Actual Temp: Top value, Set Point: Bottom value)",
      materialcolor: Colors.redAccent,
      videoController: YoutubePlayerController(
        initialVideoId: 'mjmuxQAqHZE',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  video(
      title: "Sample Placement",
      subtitle: "Wearing all PPE and insert sample into the furnace",
      materialcolor: Colors.redAccent,
      videoController: YoutubePlayerController(
        initialVideoId: 's5G7AbokcYE',
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
      title: "Operating the furnace door",
      subtitle: "Make sure don't let the interior of the door facing you",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'fMuzfMrqQag',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
      type: "tit",
      title: "Finish the experiment and clean up",
      subtitle: "How to operate the furnace",
      materialcolor: Colors.blue)),
  (video(
      title: "Removing the sample and place",
      subtitle:
          "Turn off the furnace and place the sample on the sand and mark the time",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: '6trERmdj-rA',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )))
];
