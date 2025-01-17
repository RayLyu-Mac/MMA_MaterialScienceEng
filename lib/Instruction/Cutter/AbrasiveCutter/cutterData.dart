import 'package:flutter/material.dart';
import '../../../models/video_model.dart';

/// List of video instructions for Abrasive Cutter operation
final List<VideoInstruction> abraCutter = [
  VideoInstruction.titleOnly(
    title: "Preparation",
    subtitle: "Get ready for the cutter",
    materialColor: Colors.amber,
  ),
  VideoInstruction(
    title: "Preparing: Install the blade",
    subtitle: "Install the proper blade for the cutting",
    materialColor: Colors.amber,
    videoUrl: 'YOUR_VIDEO_URL_HERE',
    autoPlay: true,
  ),
  // ... continue converting other entries
];
