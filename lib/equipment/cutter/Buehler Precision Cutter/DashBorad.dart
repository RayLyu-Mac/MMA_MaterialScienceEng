import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/Dash_borad_button.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BueDashBoard extends StatefulWidget {
  BueDashBoard({Key key}) : super(key: key);

  @override
  _BueDashBoardState createState() => _BueDashBoardState();
}

class _BueDashBoardState extends State<BueDashBoard> {
  double _screenWidth;
  double _screenH;
  double adjust;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth < 0.5) {
      _screenH = _screenH * 1.35;
      adjust = 0.75;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Buehler Precision Cutter User Interface",
            style: TextStyle(fontSize: _screenH / 40),
          ),
        ),
        body: PageView(controller: controller, children: [
          SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: _screenH / 40,
                  left: _screenWidth / 20,
                  child: Container(
                    width: _screenWidth / 1.1,
                    child: YoutubePlayer(
                        controller: YoutubePlayerController(
                      initialVideoId: 'HdgsHXJC93s',
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute: false,
                      ),
                    )),
                  ),
                ),
                Positioned(
                    top: _screenH / 2.89,
                    left: _screenWidth / 20,
                    child: Text(
                      "Menu",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: _screenH / 2.6,
                    left: _screenWidth / 20,
                    child: Text(
                        "•Set Positioning Laser\n•Chamber Light\n•Swtich between Imperial or Metric\n•Don't Touch 110V\n•Set different languages\n•Coolant tank")),
                Positioned(
                    top: _screenH / 1.76,
                    left: _screenWidth / 20,
                    child: Text(
                      "RPM Button",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: _screenH / 1.65,
                    left: _screenWidth / 20,
                    child: Text(
                        "Click the RPM button in the main page \nset the new RPM using number pad")),
                Positioned(
                    top: _screenH / 1.48,
                    left: _screenWidth / 20,
                    child: Text(
                      "Feed Rate",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: _screenH / 1.4,
                    left: _screenWidth / 20,
                    child: Text(
                        "Click the Feed Rate button in the main page \nset the new Feed Rate using number pad")),
              ],
            ),
          ),
          SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: _screenH / 40,
                  left: _screenWidth / 20,
                  child: Container(
                    width: _screenWidth / 1.1,
                    child: YoutubePlayer(
                        controller: YoutubePlayerController(
                      initialVideoId: 'In-tuy6F2Yk',
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute: false,
                      ),
                    )),
                  ),
                ),
                Positioned(
                    top: _screenH / 2.89,
                    left: _screenWidth / 20,
                    child: Text(
                      "Cut Length",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: _screenH / 2.6,
                    left: _screenWidth / 20,
                    child: Text(
                        "Click the Cut Length button in the main page \nset the new Cut length using number pad")),
                Positioned(
                    top: _screenH / 2.1,
                    left: _screenWidth / 20,
                    child: Text(
                      "Save a cutting method",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: _screenH / 1.9,
                    left: _screenWidth / 20,
                    child: Text(
                        "After set the RPM, feed rate and cutting length, \nclick save and enter the blade type")),
                Positioned(
                    top: _screenH / 1.55,
                    left: _screenWidth / 20,
                    child: Text(
                      "Load a cutting method",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: _screenH / 1.45,
                    left: _screenWidth / 20,
                    child: Text(
                        "Select open file button \nfind the cutting method you saved")),
              ],
            ),
          ),
        ]));
  }
}
