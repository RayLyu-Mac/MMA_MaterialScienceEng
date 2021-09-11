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
        title: "Preparation I",
        subtitle: "Set Up the machine & Component",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Step 1: Turning on the machine",
          subtitle: "Turn on the gas cylinder and the ICP Machine",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'Dtk_P8kckWM',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Step 2: Set up for software",
            subtitle: "Open the software and set up the method",
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'VFYjSrI02kQ',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Preparation II",
        subtitle: "Pump and customize the method on software",
        materialcolor: Colors.redAccent[700],
      ))
      ..add(
        video(
            title: "Step 3: Peristaltic Pump Set-Up",
            subtitle:
                "Setting tension, Ensuring proper flow and Inserting Tubes",
            materialcolor: Colors.redAccent,
            videoController: YoutubePlayerController(
              initialVideoId: 'WDtx6M9AkYU',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
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
      )
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the ICP-OES",
        materialcolor: Colors.green[600],
      ))
      ..add(video(
          title: "Step 5: Ignite the Torch",
          subtitle:
              "Ignite by pushing ignited icon on the top bar of toolbox program",
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: '-neaMKjd1BA',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Step 6: Analysis",
          subtitle: "Calibration and ID element",
          materialcolor: Colors.green[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'WbTSPS2rLm0',
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
          title: "Step 7: Finish the experiement",
          subtitle: "Saving Data and Turn off the machine",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'nAFwvCeKqL0',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
