import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'autoPolisherData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTileScroll.dart';

class AutoPolisherinstruction extends StatefulWidget {
  final video videoType;
  const AutoPolisherinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _AutoPolisherinstructionState createState() =>
      _AutoPolisherinstructionState();
}

class _AutoPolisherinstructionState extends State<AutoPolisherinstruction> {
  List _instructionList = List<video>();
  double _screenWidth;
  double _screenH;
  List titles = [];
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _instructionList = video().videoList();
    for (var j = 0; j < _instructionList.length; j++) {
      titles.add(_instructionList[j].title);
    }
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    Drawer autopolisherinstru() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Instruction for Charpy Impact Tester"),
              ),
              for (var k = 0; k < titles.length; k++)
                ScrollcustomListTile(
                  name: titles[k],
                  pageTo: k - 1,
                  fonts: 13,
                  controller: controller,
                ),
            ],
          ),
        );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Automatic Polisher Instruction",
            style:
                TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: autopolisherinstru(),
        body: SafeArea(
          child: ListView.builder(
            controller: controller,
            itemExtent: 325,
            itemCount: _instructionList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Card(
                  color: _instructionList[index].materialcolor,
                  margin: EdgeInsets.fromLTRB(20, 16, 20, 8),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 265,
                          left: 5,
                          child: Text(
                            _instructionList[index].title,
                            style: TextStyle(
                                fontSize: _screenH / 47,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: 285,
                          left: 5,
                          child: Text(
                            _instructionList[index].subtitle,
                            style: TextStyle(fontSize: _screenH / 58),
                          )),
                      Positioned(
                          top: 0,
                          child: Container(
                            height: 260,
                            child: YoutubePlayer(
                              controller:
                                  _instructionList[index].videoController,
                              liveUIColor: Colors.amber,
                            ),
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
