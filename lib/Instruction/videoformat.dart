import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter/material.dart';

class video {
  final String? type;
  final String? title;
  final String subtitle;
  final MaterialColor materialcolor;
  final YoutubePlayerController? videoController;

  video({
    this.type,
    this.title,
    required this.subtitle,
    required this.materialcolor,
    this.videoController,
  });
}
