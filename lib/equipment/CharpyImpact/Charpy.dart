import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/CharpyImpact/charpyImpactMain.dart';
import 'charpyImpactBackG.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class charpy_test extends StatefulWidget {
  final String? location;
  final String? emailTo;
  final bool? ori;
  charpy_test({Key? key, this.location, this.ori, this.emailTo})
      : super(key: key);

  @override
  _charpy_testState createState() => _charpy_testState();
}

class _charpy_testState extends State<charpy_test> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: 'eS8gsOCzugY',
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Charpy Impact Tester",
        warnVido: "eS8gsOCzugY",
        instruction: RockWellinstruction(),
        theory: CharpyBackG(),
        oritation: widget.ori,
        backC: Colors.blue.shade100,
        img:
            "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/cit.jpg?raw=true",
        intro:
            "'Used to measure the relative toughness of a material. More specifically, the energy absorbed by a standard notched specimen while breaking under an impact load. Has been used as an economical quality control method to determine the notch sensitivity. The standard size for specimen: 55 mm *10 mm* 10mm, having a notch machined across one of the larger dimensions.'");
  }
}
