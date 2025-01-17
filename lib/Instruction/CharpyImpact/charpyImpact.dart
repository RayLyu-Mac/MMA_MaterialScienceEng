import 'package:flutter/material.dart';
import '../../models/video_model.dart';

/// List of video instructions for Charpy Impact testing
final List<VideoInstruction> charpyInst = [
  VideoInstruction.titleOnly(
    title: "Preparation",
    subtitle: "Ready the mount press machine",
    materialColor: Colors.amber.shade600,
  ),
  VideoInstruction(
    title: "Load Sample",
    subtitle: "Load Sample with clamp notice the direction of the V groove",
    materialColor: Colors.amber.shade300,
    videoUrl: 'YOUR_VIDEO_URL_HERE',
    autoPlay: true,
  ),
  // ... continue converting other entries
];
