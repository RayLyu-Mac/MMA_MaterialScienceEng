import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> autoPoli = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Set up the machine",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Software Preparation",
      subtitle: "Fina a suitable program based on the sample",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'dR2Jg6yBi30',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  video(
      title: "Grinding Preparation",
      subtitle: "Placing the holder and the sample",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'uNo8M46WMFM',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "Grinding Washing and Polishing",
    materialcolor: Colors.green,
  )),
  video(
      title: "After Grinding Finished",
      subtitle: "Start with 100X and use the joystick to focus",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '_pomg_h4HpA',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
      title: "Cleaning",
      subtitle: "Clean the Sample and Holder to remove any debris and the base",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'I6sSbXVEq2Y',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  (video(
      title: "Cloth",
      subtitle: "Placing Cloth onto the Base and Charging the Cloth",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'WQk9IU3Rtp8',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  (video(
      title: "Polishing",
      subtitle: "Polishing the sample",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'SfSke_g0hKM',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      ))),
  (video(
      title: "Polishing the sample",
      subtitle:
          "Find proper polishing media and set corresponding program on the machine",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'yqwMxOa71AY',
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
      title: "Finish the Test and Clean Up",
      subtitle: "Cleaning the machine and the sample",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'gD1eNvOUiNM',
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      )))
];
