import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'keyenceData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTileScroll.dart';

class KeyenceMicroInstru extends StatefulWidget {
  final video videoType;
  const KeyenceMicroInstru({Key key, this.videoType}) : super(key: key);

  @override
  _KeyenceMicroInstruState createState() => _KeyenceMicroInstruState();
}

class _KeyenceMicroInstruState extends State<KeyenceMicroInstru> {
  List _instructionList = List<video>();
  double _screenWidth;
  double _screenH;
  final ScrollController controller = ScrollController();
  List title = [
    "Start the machine",
    "Placing the sample into the stage",
    "Adjust the light for the microscope",
    "Taking simple image",
    "Correcting a sample which is not flat",
    "Large Image Scan",
    "Enhancing the resolution",
    "Glare removal",
    "Finish the experiment"
  ];

  @override
  void initState() {
    super.initState();
    _instructionList = video().videoList();
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
    Drawer keyenceInstruction() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Keyence Microscope")),
              for (var j = 0; j < title.length; j++)
                ScrollcustomListTile(
                    name: title[j],
                    pageTo: j - 1,
                    fonts: 13,
                    controller: controller)
            ],
          ),
        );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Keyence MicroScope Instruction",
            style:
                TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: keyenceInstruction(),
        body: SafeArea(
          child: ListView.builder(
            controller: controller,
            itemExtent: 335,
            itemCount: _instructionList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Card(
                  color: _instructionList[index].materialcolor,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 8),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 270,
                          left: 5,
                          child: Text(
                            _instructionList[index].title,
                            style: TextStyle(
                                fontSize: _screenH / 47,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: 290,
                          left: 5,
                          child: Text(
                            _instructionList[index].subtitle,
                            style: TextStyle(fontSize: _screenH / 58),
                          )),
                      Positioned(
                          top: 0,
                          child: Container(
                            height: 265,
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
