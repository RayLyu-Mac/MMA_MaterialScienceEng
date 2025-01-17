import 'package:flutter/material.dart';

/// Represents a video instruction item with associated metadata
class VideoInstruction {
  /// Title of the video instruction
  final String title;

  /// Subtitle or description of the video
  final String subtitle;

  /// URL to the video content
  final String videoUrl;

  /// Theme color for UI elements
  final Color materialColor;

  /// Type of instruction (e.g., "tit" for title, "ins" for instruction)
  final String? type;

  /// Whether video should autoplay
  final bool autoPlay;

  const VideoInstruction({
    required this.title,
    required this.subtitle,
    required this.videoUrl,
    required this.materialColor,
    this.type,
    this.autoPlay = false,
  });

  /// Creates a title-only instruction without video content
  factory VideoInstruction.titleOnly({
    required String title,
    required String subtitle,
    required Color materialColor,
  }) {
    return VideoInstruction(
      title: title,
      subtitle: subtitle,
      videoUrl: '',
      materialColor: materialColor,
      type: 'tit',
    );
  }
}
