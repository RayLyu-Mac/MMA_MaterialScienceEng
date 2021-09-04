import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'icp_data.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class icp_instruction extends StatefulWidget {
  final video videoType;
  const icp_instruction({Key key, this.videoType}) : super(key: key);

  @override
  _icp_instructionState createState() => _icp_instructionState();
}

class _icp_instructionState extends State<icp_instruction> {
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

  @override
  Widget build(BuildContext context) {
    Drawer icpInstruction() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Instruction For ICP-OES"),
              ),
              ScrollcustomListTile(
                  name: "Step 1: Turning on the machine",
                  pageTo: 0,
                  fonts: 15,
                  controller: controller),
              ScrollcustomListTile(
                  name: "Step 2: Set up for software",
                  pageTo: 1,
                  fonts: 15,
                  controller: controller),
              ScrollcustomListTile(
                  name: "Step 3: Peristaltic Pump Set-Up",
                  pageTo: 2,
                  fonts: 15,
                  controller: controller),
              ScrollcustomListTile(
                  name: "Step 4: Edit Method on software",
                  pageTo: 3,
                  fonts: 15,
                  controller: controller),
              ScrollcustomListTile(
                  name: "Step 5: Ignite the Torch",
                  pageTo: 4,
                  fonts: 15,
                  controller: controller),
              ScrollcustomListTile(
                  name: "Step 6: Analysis",
                  pageTo: 5,
                  fonts: 15,
                  controller: controller),
              ScrollcustomListTile(
                  name: "Step 7: Finish the experiement",
                  pageTo: 6,
                  fonts: 15,
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
            "ICP-OES instruction",
            style:
                TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: icpInstruction(),
        body: SafeArea(
          child: ListView.builder(
            controller: controller,
            itemExtent: 325,
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
