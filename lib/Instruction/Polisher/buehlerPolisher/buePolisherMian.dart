import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import '../abrasive_cutter/cutterData.dart';
import 'buePolisherData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTileScroll.dart';

// ignore: camel_case_types
class BuehlerPolisherInstru extends StatefulWidget {
  final video videoType;
  const BuehlerPolisherInstru({Key key, this.videoType}) : super(key: key);

  @override
  _BuehlerPolisherInstruState createState() => _BuehlerPolisherInstruState();
}

class _BuehlerPolisherInstruState extends State<BuehlerPolisherInstru> {
  List _instructionList = List<video>();
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
    _screenH = MediaQuery.of(context).size.height;
  }

  List steps = [
    "step 1: Brifely introduction of Polisher" //0:49-1:12
        "Step 2: Dash Board Introduction", //1:13-1:51
    "Step 3: Polish with 3-Micron Diamond Paste", //1:52-2:27
    "step 4: Washing and Rinsing the sample after each polish " //2:28-2:51
        "step 5: Dry the sample " //2:53-3:08
        "step 6: Polish with 1-Micron Diamond Paste" //3:08-4:04
        "step 7: Washing and Rinsing the sample after each polish " //4:05-4:29
        "step 8: Dry the sample " //4:30-4:42
        "step 9: Clean the Polisher" //4:43-5:16
  ];
  @override
  Widget build(BuildContext context) {
    Drawer bpolisherInstru() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Instruction For Manual Polisher"),
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
          title: Text(
            "Manual Polisher instruction",
            style:
                TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: bpolisherInstru(),
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
