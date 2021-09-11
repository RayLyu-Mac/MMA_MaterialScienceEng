import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video {
  String title;
  String subtitle;
  YoutubePlayerController videoController;
  Color materialcolor;
  String type;

  video({
    this.title,
    this.subtitle,
    this.type,
    this.materialcolor,
    this.videoController,
  });
  List<video> videoList() {
    List videoData = List<video>();
    return videoData
      ..add(video(
        type: "tit",
        title: "Preparation",
        subtitle: "Place the sample and start the tester",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Load Sample",
          subtitle:
              "Place Sample Into the Holder and place Holder into the instrument",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: '04P0HrpTFBw',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Adjust the Load of the microscope",
            subtitle: "Changing the load based on the material that is testing",
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'aN9HMvILYYU',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Focusing on the sample",
            subtitle: "Start with 100X and use the joystick to focus",
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'G9X9vON7dFk',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "SOPs for microhardness tester",
        materialcolor: Colors.green[600],
      ))
      ..add(video(
          title: "Single Point Indent",
          subtitle:
              "Find a suitable surface and use joystick to move the sample",
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'T8a0dO9LqOQ',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Template",
        subtitle: "How to use different mode of template",
        materialcolor: Colors.limeAccent[700],
      ))
      ..add(video(
          title: "Field Template",
          subtitle: "Pattern needed (multiple indent)",
          materialcolor: Colors.limeAccent[200],
          videoController: YoutubePlayerController(
            initialVideoId: 'hpK5HnruF_s',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Linear Template",
          subtitle:
              "Linear Template is done when a straight line is required (preforming a Case-Hardened Sample).",
          materialcolor: Colors.limeAccent[200],
          videoController: YoutubePlayerController(
            initialVideoId: 'J6HhFkc3Auo',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Field Point Template",
          subtitle:
              "Field Point is use when random points are required around the sample.",
          materialcolor: Colors.limeAccent[200],
          videoController: YoutubePlayerController(
            initialVideoId: 'kmIsfgi7E_E',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
        type: "tit",
        title: "Finish and Clean Up",
        subtitle: "Clean and organize after experiment finished",
        materialcolor: Colors.blue[600],
      ))
      ..add(video(
          title: "Finish the Test and Clean Up",
          subtitle: "Shut down the machine and unload the sample",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: '4ggDqgPr3SM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
