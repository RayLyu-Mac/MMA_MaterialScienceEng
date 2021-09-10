import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'BcutterData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuehlerCutterInstru extends StatefulWidget {
  final video videoType;
  const BuehlerCutterInstru({Key key, this.videoType}) : super(key: key);

  @override
  _BuehlerCutterInstruState createState() => _BuehlerCutterInstruState();
}

class _BuehlerCutterInstruState extends State<BuehlerCutterInstru> {
  List _instructionList = List<video>();
  double _screenH;
  final ScrollController controller = ScrollController();
  List titles = [];

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
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    Drawer buehlerCInstr() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Instruction For Buehler Precision Cutter"),
              ),
              for (var i = 0; i < titles.length; i++)
                ScrollcustomListTile(
                    name: titles[i],
                    pageTo: i - 1,
                    fonts: 13,
                    controller: controller),
            ],
          ),
        );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
              iconSize: 32,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(FontAwesomeIcons.timesCircle))
        ],
        title: Text(
          "Buehler Precision Cutter instruction",
          style:
              TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: buehlerCInstr(),
      body: SingleChildScrollView(
          child: Column(children: [
        for (var index = 0; index < _instructionList.length; index++)
          _instructionList[index].type == "ins"
              ? GestureDetector(
                  child: Card(
                    color:
                        _instructionList[index].materialcolor.withOpacity(0.85),
                    margin: EdgeInsets.fromLTRB(20, 16, 20, 8),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0)),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Container(
                          height: 245,
                          width: double.infinity,
                          child: YoutubePlayer(
                            controller: _instructionList[index].videoController,
                            liveUIColor: Colors.amber,
                          ),
                        ),
                        SizedBox(
                          height: _screenH / 70,
                        ),
                        Text(
                          _instructionList[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: _screenH / 39,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          _instructionList[index].subtitle,
                          style: TextStyle(fontSize: _screenH / 55),
                        ),
                        SizedBox(
                          height: _screenH / 55,
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 6, color: Colors.grey.shade100))),
                        child: Text(
                          _instructionList[index].title,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: _screenH / 50,
                      ),
                      Container(
                        child: Text(
                          _instructionList[index].subtitle,
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                )
      ])),
    );
  }
}
