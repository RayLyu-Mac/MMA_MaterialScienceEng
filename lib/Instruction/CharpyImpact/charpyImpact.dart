import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video {
  String title;
  String subtitle;
  YoutubePlayerController? videoController;
  Color materialcolor;
  String? type;

  video({
    required this.title,
    required this.subtitle,
    this.type,
    required this.materialcolor,
    this.videoController,
  });
}

List<video> charpyInst = [
  (video(
    type: "tit",
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialcolor: Colors.amber.shade600,
  )),
  (video(
      title: "Load Sample",
      subtitle: "Load Sample with clamp notice the direction of the V groof",
      materialcolor: Colors.amber.shade300,
      videoController: YoutubePlayerController(
        initialVideoId: '7-pdJE_EZmY',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
    type: "tit",
    title: "Regular Test",
    subtitle: "How to operate the mount press",
    materialcolor: Colors.green.shade600,
  )),
  video(
      title: "Perform Regular Test",
      subtitle: "One time testing with charpy impact",
      materialcolor: Colors.green.shade300,
      videoController: YoutubePlayerController(
        initialVideoId: 'uoPLaVW6hkc',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
    type: "tit",
    title: "Transition Test",
    subtitle: "How to operate the mount press",
    materialcolor: Colors.purple,
  )),
  video(
      title: "Preparation for ductile transition test",
      subtitle: "Safty note for performing the test",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController(
        initialVideoId: 'owDRlbPH8Xk',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )),
  (video(
      title: "Test Under Boiling Temperature (100 C)",
      subtitle: "Sample heat up to 100 degree C for testing",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController(
        initialVideoId: '58rh9k8c7a8',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
      title: "Test Under Room Temperature (25 C)",
      subtitle: "Sample under room temperature for testing",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController(
        initialVideoId: '8OkzLmUUgg0',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
      title: "Test Under Ice Water (0 C)",
      subtitle: "Sample cool down to 0 degree C for testing",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController(
        initialVideoId: 'YnK_5R6GG8g',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
      title: "Dry Ice and Ethonal (-80 degree C)",
      subtitle: "Sample cool down to -80 degree C for testing",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController(
        initialVideoId: 'gHCu-21CbWE',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
      title: "Liquid Nitrogen (-196 degree C)",
      subtitle: "Sample cool down to -196 degree C for testing",
      materialcolor: Colors.purple,
      videoController: YoutubePlayerController(
        initialVideoId: 'JDuPEjcapmA',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      ))),
  (video(
    type: "tit",
    title: "Finish and Clean Up",
    subtitle: "Clean and organize after experiment finished",
    materialcolor: Colors.blue.shade600,
  )),
  (video(
      title: "Finish the Test and Clean Up",
      subtitle: "Chain the machine",
      materialcolor: Colors.blue.shade300,
      videoController: YoutubePlayerController(
        initialVideoId: 'G6q2Asm8ZcY',
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      )))
];
