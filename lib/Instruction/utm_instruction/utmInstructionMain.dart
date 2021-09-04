import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'utm_data.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class utm_instruction extends StatefulWidget {
  final video videoType;
  const utm_instruction({Key key, this.videoType}) : super(key: key);

  @override
  _utm_instructionState createState() => _utm_instructionState();
}

class _utm_instructionState extends State<utm_instruction> {
  List _instructionList = List<video>();
  double _screenWidth;
  double _screenH;
  final ScrollController controller = ScrollController();

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

  List steps = [
    "Step 1A: Flat Sample Measurement",
    "Step 1B: Round Sample Measurement",
    "Step 2: Set Up Machine",
    "Step 3: Load Sample",
    "Introduction to Extensometer",
    "Extensometer used for round /flat sample and installing",
    "Round Grid Installation",
    "Step 4: Begin the Test",
    "Step 5: Observation and Save the data",
    "Step 6: Finish the test"
  ];
  @override
  Widget build(BuildContext context) {
    Drawer utmInstruction() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Instruction For UTM"),
              ),
              for (var i = 0; i < steps.length; i++)
                ScrollcustomListTile(
                    name: steps[i],
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
            "UTM instruction",
            style:
                TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: utmInstruction(),
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
                                fontSize: _screenH / 50,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: 290,
                          left: 5,
                          child: Text(
                            _instructionList[index].subtitle,
                            style: TextStyle(fontSize: _screenH / 60),
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
