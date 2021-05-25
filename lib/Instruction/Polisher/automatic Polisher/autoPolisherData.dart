import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video {
  String title;
  String subtitle;
  YoutubePlayerController videoController;
  Color materialcolor;

  video({
    this.title,
    this.subtitle,
    this.materialcolor,
    this.videoController,
  });
  List<video> videoList() {
    List videoData = List<video>();
    return videoData
      ..add(video(
          title: "Software Preparation",
          subtitle: "Fina a suitable program based on the sample",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'dR2Jg6yBi30',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Grinding Preparation",
            subtitle: "Placing the holder and the sample",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: 'uNo8M46WMFM',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "After Grinding Finished",
            subtitle: "Start with 100X and use the joystick to focus",
            materialcolor: Colors.pink[400],
            videoController: YoutubePlayerController(
              initialVideoId: '_pomg_h4HpA',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Cleaning",
          subtitle:
              "Clean the Sample and Holder to remove any debris and the base",
          materialcolor: Colors.blue[400],
          videoController: YoutubePlayerController(
            initialVideoId: 'I6sSbXVEq2Y',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Cloth",
          subtitle: "Placing Cloth onto the Base and Charging the Cloth",
          materialcolor: Colors.green[400],
          videoController: YoutubePlayerController(
            initialVideoId: 'WQk9IU3Rtp8',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Polishing",
          subtitle: "Polishing the sample",
          materialcolor: Colors.redAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'SfSke_g0hKM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Polishing the sample",
          subtitle:
              "Find proper polishing media and set corresponding program on the machine",
          materialcolor: Colors.red[400],
          videoController: YoutubePlayerController(
            initialVideoId: 'yqwMxOa71AY',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Finish the Test and Clean Up",
          subtitle: "Cleaning the machine and the sample",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: 'gD1eNvOUiNM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
