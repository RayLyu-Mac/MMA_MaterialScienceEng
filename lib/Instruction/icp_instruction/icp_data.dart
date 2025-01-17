import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
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
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'Dtk_P8kckWM',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Step 2: Set up for software",
      subtitle: "Open the software and set up the method",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'VFYjSrI02kQ',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Preparation II",
    subtitle: "Pump and customize the method on software",
    materialcolor: Colors.red,
  )),
  video(
      title: "Step 3: Peristaltic Pump Set-Up",
      subtitle: "Setting tension, Ensuring proper flow and Inserting Tubes",
      materialcolor: Colors.red,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'WDtx6M9AkYU',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Step 4: Edit Method on software",
      subtitle: "Periodic table, Conditions, Standard, Sequence",
      materialcolor: Colors.red,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'Ywu-4KFUc8M',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
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
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '-neaMKjd1BA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Step 6: Analysis",
      subtitle: "Calibration and ID element",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'WbTSPS2rLm0',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
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
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'nAFwvCeKqL0',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
