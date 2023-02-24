import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> icpData = [
  (video(
    type: "tit",
    title: "Preparation I",
    subtitle: "Set Up the machine & Component",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Step 1: Turning on the machine",
      subtitle: "Turn on the gas cylinder and the ICP Machine",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'Dtk_P8kckWM',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  video(
      title: "Step 2: Set up for software",
      subtitle: "Open the software and set up the method",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController(
        initialVideoId: 'VFYjSrI02kQ',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Preparation II",
    subtitle: "Pump and customize the method on software",
    materialcolor: Colors.redAccent,
  )),
  video(
      title: "Step 3: Peristaltic Pump Set-Up",
      subtitle: "Setting tension, Ensuring proper flow and Inserting Tubes",
      materialcolor: Colors.redAccent,
      videoController: YoutubePlayerController(
        initialVideoId: 'WDtx6M9AkYU',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  video(
      title: "Step 4: Edit Method on software",
      subtitle: "Periodic table, Conditions, Standard, Sequence",
      materialcolor: Colors.redAccent,
      videoController: YoutubePlayerController(
        initialVideoId: 'Ywu-4KFUc8M',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the ICP-OES",
    materialcolor: Colors.green,
  )),
  (video(
      title: "Step 5: Ignite the Torch",
      subtitle:
          "Ignite by pushing ignited icon on the top bar of toolbox program",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: '-neaMKjd1BA',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
      title: "Step 6: Analysis",
      subtitle: "Calibration and ID element",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController(
        initialVideoId: 'WbTSPS2rLm0',
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
      title: "Step 7: Finish the experiement",
      subtitle: "Saving Data and Turn off the machine",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController(
        initialVideoId: 'nAFwvCeKqL0',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )))
];
