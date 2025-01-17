import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/videoformat.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

List<video> llyoldTensile = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Set Up the machine & Component",
    materialcolor: Colors.amber,
  )),
  (video(
      title: "Start the experiment",
      subtitle: "Turn on the machine and the software",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'taifpWToaMc',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Use the extensometer",
      subtitle: "Method of using the extensometer",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'rIvRC6OAfwE',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Loading Sample to the grip",
      subtitle: "The proper way of loading sample to the machine",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'nDR80RWMVUs',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "How to operate the cutter",
    materialcolor: Colors.green,
  )),
  video(
      title: "Running the tensile test",
      subtitle: "Start the experiment and observation the data",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '0cvb-QyCVZw',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Finish and Clean Up",
    subtitle: "Clean and organize after experiment finished",
    materialcolor: Colors.blue,
  )),
  (video(
      title: "Finish the test",
      subtitle: "Remove the extensometer and turn off the machine",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'jRFT1Z9c7z8',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
