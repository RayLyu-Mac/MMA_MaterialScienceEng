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
        subtitle: "Set Up the machine & Component",
        materialcolor: Colors.amber[600],
      ))
      ..add(video(
          title: "Start the experiment",
          subtitle: "Turn on the machine and the software",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'taifpWToaMc',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Use the extensometer",
            subtitle: "Method of using the extensometer",
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'rIvRC6OAfwE',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Loading Sample to the grip",
            subtitle: "The proper way of loading sample to the machine",
            materialcolor: Colors.amber[300],
            videoController: YoutubePlayerController(
              initialVideoId: 'nDR80RWMVUs',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Operation",
        subtitle: "How to operate the cutter",
        materialcolor: Colors.green[600],
      ))
      ..add(
        video(
            title: "Running the tensile test",
            subtitle: "Start the experiment and observation the data",
            materialcolor: Colors.green[300],
            videoController: YoutubePlayerController(
              initialVideoId: '0cvb-QyCVZw',
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            )),
      )
      ..add(video(
        type: "tit",
        title: "Finish and Clean Up",
        subtitle: "Clean and organize after experiment finished",
        materialcolor: Colors.blue[600],
      ))
      ..add(video(
          title: "Finish the test",
          subtitle: "Remove the extensometer and turn off the machine",
          materialcolor: Colors.blue[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'jRFT1Z9c7z8',
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          )));
  }
}
