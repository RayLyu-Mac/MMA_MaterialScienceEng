import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class warningVideo extends StatefulWidget {
  final Widget pageTo;
  final String videoID;
  const warningVideo({@required this.pageTo, @required this.videoID, Key key})
      : super(key: key);

  @override
  _warningVideoState createState() => _warningVideoState();
}

class _warningVideoState extends State<warningVideo>
    with SingleTickerProviderStateMixin {
  double _screenWidth;
  double _screenH;

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
                width: _screenWidth / 1.18, height: _screenH / 1.7),
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
                backgroundColor: Colors.redAccent[100].withOpacity(0.9),
                elevation: 5,
                title: Text(
                  "Before Enter",
                  style: TextStyle(fontSize: _screenH / 30),
                ),
                content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      FlatButton.icon(
                          splashColor: Colors.white30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: widget.pageTo,
                                    duration: Duration(milliseconds: 550),
                                    type: PageTransitionType.scale,
                                    alignment: Alignment.centerLeft));
                          },
                          icon: Icon(Icons.forward),
                          label: Text("Forward")),
                      SizedBox(
                        height: _screenH / 80,
                      ),
                      FlatButton.icon(
                          splashColor: Colors.white30,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.backspace),
                          label: Text("Cancel"))
                    ]))));
  }
}
