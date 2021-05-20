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
          title: "Start the machine",
          subtitle: "Press the power button",
          materialcolor: Colors.amber[300],
          videoController: YoutubePlayerController(
            initialVideoId: 'xrLiwrYBhMs',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(
        video(
            title: "Placing the sample into the stage",
            subtitle: "Prepare the sample for the test",
            materialcolor: Colors.amber[400],
            videoController: YoutubePlayerController(
              initialVideoId: '3ms1xMMMQjc',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Adjust the light for the microscope",
            subtitle:
                "ID brightfield, polarize and dark field light, adjust them based on the case",
            materialcolor: Colors.amber[600],
            videoController: YoutubePlayerController(
              initialVideoId: 'V8abiMLr2cY',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(
        video(
            title: "Taking simple image",
            subtitle: "Process of taking image and save",
            materialcolor: Colors.pink[400],
            videoController: YoutubePlayerController(
              initialVideoId: '4hs7BH65vLI',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            )),
      )
      ..add(video(
          title: "Correcting a sample which is not flat",
          subtitle:
              "Find the lowest point of the sample using either the Fine or Coarse Focusing.",
          materialcolor: Colors.pink[600],
          videoController: YoutubePlayerController(
            initialVideoId: 'cnUS2RppP7U',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Large Image Scan",
          subtitle: "Chose 2D or 3D, 3D is required when sample is not flat",
          materialcolor: Colors.redAccent,
          videoController: YoutubePlayerController(
            initialVideoId: 'bDzxWiM7kwY',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Enhancing the resolution",
          subtitle: "Chose 2D or 3D, 3D is required when sample is not flat",
          materialcolor: Colors.blue[400],
          videoController: YoutubePlayerController(
            initialVideoId: 'SvwAnZuChzA',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Selecting the best image",
          subtitle: "Choose a best and clear images",
          materialcolor: Colors.blue,
          videoController: YoutubePlayerController(
            initialVideoId: 'IzNETDmhF9I',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Glare removal",
          subtitle: "Chose 2D or 3D, 3D is required when sample is not flat",
          materialcolor: Colors.blue[600],
          videoController: YoutubePlayerController(
            initialVideoId: '9TYFOn23E_8',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )))
      ..add(video(
          title: "Finish the experiment",
          subtitle: "Save the image the shut the microscope",
          materialcolor: Colors.green,
          videoController: YoutubePlayerController(
            initialVideoId: '6_7OJJNYE_M',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          )));
  }
}
