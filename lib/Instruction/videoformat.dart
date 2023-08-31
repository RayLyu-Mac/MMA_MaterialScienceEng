import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

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
