import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:mma_mse/Instruction/videoformat.dart';

List<video> keyenceData = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the Microscope",
    materialcolor: Colors.grey,
  )),
  (video(
      title: "Start the machine",
      subtitle: "Press the power button",
      materialcolor: Colors.grey,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'xrLiwrYBhMs',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  video(
      title: "Placing the sample into the stage",
      subtitle: "Prepare the sample for the test",
      materialcolor: Colors.grey,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '3ms1xMMMQjc',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Adjust the light for the microscope",
      subtitle:
          "ID brightfield, polarize and dark field light, adjust them based on the case",
      materialcolor: Colors.amber,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'V8abiMLr2cY',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Operation",
    subtitle: "SOPs for microscope inspection",
    materialcolor: Colors.green,
  )),
  video(
      title: "Taking simple image",
      subtitle: "Process of taking image and save",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '4hs7BH65vLI',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Correcting a sample which is not flat",
      subtitle:
          "Find the lowest point of the sample using either the Fine or Coarse Focusing.",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'cnUS2RppP7U',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  video(
      title: "Large Image Scan",
      subtitle: "Chose 2D or 3D, 3D is required when sample is not flat",
      materialcolor: Colors.green,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'bDzxWiM7kwY',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      )),
  (video(
    type: "tit",
    title: "Post-processing",
    subtitle: "Get a better image for analysing",
    materialcolor: Colors.purple,
  )),
  (video(
      title: "Enhancing the resolution",
      subtitle: "Chose 2D or 3D, 3D is required when sample is not flat",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'SvwAnZuChzA',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Selecting the best image",
      subtitle: "Choose a best and clear images",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: 'IzNETDmhF9I',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
  (video(
      title: "Glare removal",
      subtitle: "Chose 2D or 3D, 3D is required when sample is not flat",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '9TYFOn23E_8',
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
      title: "Finish the experiment",
      subtitle: "Save the image the shut the microscope",
      materialcolor: Colors.blue,
      videoController: YoutubePlayerController.fromVideoId(
        videoId: '6_7OJJNYE_M',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ))),
];
