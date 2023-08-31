import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class warningVideo extends StatefulWidget {
  final Widget pageTo;
  final String videoID;
  const warningVideo({this.pageTo, this.videoID, Key key}) : super(key: key);

  @override
  _warningVideoState createState() => _warningVideoState();
}

class _warningVideoState extends State<warningVideo>
    with SingleTickerProviderStateMixin {
  double _screenWidth = 0;
  double _screenH = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: BoxConstraints.expand(
                width: _screenWidth / 1.18, height: _screenH / 1.45),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  width: 6,
                  color: Colors.white.withOpacity(0.8),
                )),
            child: AlertDialog(
                insetPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.fromLTRB(
                    _screenWidth / 35, 0, _screenWidth / 40, 0),
                buttonPadding:
                    EdgeInsets.fromLTRB(0, _screenH / 20, 0, _screenH / 30),
                backgroundColor: Colors.red.shade100.withOpacity(0.9),
                elevation: 5,
                title: Text(
                  "Before Enter",
                  style: TextStyle(fontSize: _screenH / 30),
                ),
                content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: _screenH / 50,
                      ),
                      Container(
                          child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: widget.videoID,
                          flags: YoutubePlayerFlags(
                            autoPlay: true,
                            mute: false,
                          ),
                        ),
                      )),
                      SizedBox(
                        height: _screenH / 30,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                    context,
                                    PageTransition(
                                        child: widget.pageTo,
                                        duration: Duration(milliseconds: 650),
                                        type: PageTransitionType.scale,
                                        alignment: Alignment.centerLeft))
                                .then((value) => Navigator.of(context).pop());
                          },
                          icon: Icon(Icons.forward),
                          label: Text(
                            "Forward",
                            style: TextStyle(fontSize: _screenH / 38),
                          )),
                      SizedBox(
                        height: _screenH / 45,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.backspace),
                          label: Text(
                            "Cancel",
                            style: TextStyle(fontSize: _screenH / 38),
                          )),
                      SizedBox(
                        height: _screenH / 45,
                      ),
                    ]))));
  }
}
