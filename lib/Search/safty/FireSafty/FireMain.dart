import 'package:flutter/material.dart';
import 'FireData.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:mma_mse/Search/safty/ShowerWasher/location.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:mma_mse/Search/tools/phaseDiagram/zoomIn.dart';

class ExtingshSymbols extends StatefulWidget {
  ExtingshSymbols({Key? key}) : super(key: key);

  @override
  _ExtingshSymbolsState createState() => _ExtingshSymbolsState();
}

class _ExtingshSymbolsState extends State<ExtingshSymbols> {
  double _screenWidth = 0;
  double _screenH = 0;
  List tiles = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  void initState() {
    super.initState();
    for (var j = 0; j < result.length; j++) {
      tiles.add(result[j].title);
    }
  }

  List<testdetailData> result = fireData;
  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 1.7) {
      _screenH = _screenH * 0.85;
    }
    final ScrollController controller = ScrollController();

    Drawer tensileResult() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Fire Class")),
              for (var j = 0; j < result.length; j++)
                ScrollcustomListTile(
                  name: result[j].title,
                  pageTo: j,
                  fonts: 12,
                  controller: controller,
                  offset: 385,
                )
            ],
          ),
        );

    return PageView(
      children: [
        fireProcedure(),
        Scaffold(
            backgroundColor: Colors.redAccent[100],
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Fire Class",
                style: TextStyle(fontSize: _screenH / 40),
              ),
            ),
            drawer: Container(
              width: _screenWidth / 1.4,
              child: tensileResult(),
            ),
            body: ListView.builder(
                itemCount: result.length,
                itemExtent: 445,
                controller: controller,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      color: Colors.white.withOpacity(0.7),
                      semanticContainer: true,
                      margin: EdgeInsets.fromLTRB(21, 16, 21, 8),
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Text(
                            result[index].title,
                            style: TextStyle(
                                fontSize: result[index].titleFontsize,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.network(
                            result[index].addOnImg,
                            fit: BoxFit.fitWidth,
                            height: 205,
                            width: _screenWidth / 1.17,
                          ),
                          Container(
                              width: _screenWidth / 1.2,
                              child: Text(
                                result[index].content,
                                style: TextStyle(
                                    fontSize: result[index].contentFontsize),
                              )),
                          SizedBox(
                            height: _screenH / 40,
                          ),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 700),
                                        child: eyewashStation(
                                            eye: false, fire: true)));
                              },
                              icon: Icon(Icons.location_city_outlined),
                              label: Text("Location of the extinguisher"))
                        ],
                      ));
                })),
        ZoomInPhaseD(
          imgPD:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/extinguisher/exting.jpg?raw=true",
        )
      ],
    );
  }
}

class fireProcedure extends StatelessWidget {
  const fireProcedure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    List<List> content = [
      [
        "If a Hot Sample Drops on you",
        "Stay calm. Go to the sink and rinse with cold water. Try to reduce the burn and seek for medical help"
      ],
      [
        "If Fire Occur",
        "Leave the room and contact technical staff. Pull the fire alarm if you can't contact staff"
      ],
      [
        "If Fire Out of Control",
        "Pull the fire alarm and dial 88 then EOHSS (Extension: 24352). Stay nearby and try to not use the extinguisher"
      ],
      [
        "When alarm rings",
        "Evacuate, close the door behind you, and use the stairs not the elevator."
      ],
      [
        "When Unsafe to evacuate",
        'Shut the door and block any cracks. Stay low and near the window.'
      ],
      [
        "If room door is hot",
        "Don't open the door, stay put and stay low near the window."
      ]
    ];
    return Scaffold(
        backgroundColor: Colors.redAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Fire Emergency Procedure",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemExtent: 165,
                  itemCount: content.length,
                  controller: controller,
                  itemBuilder: (BuildContext context, int index1) {
                    return Card(
                        margin: EdgeInsets.fromLTRB(25, 16, 25, 8),
                        elevation: 8,
                        color: Colors.grey.shade100.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 2),
                          child: Column(
                            children: [
                              Text(
                                content[index1][0],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                content[index1][1],
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ));
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            fancyBut(
                pageTo: workingInProg(),
                width: 200,
                height: 50,
                icon: Icons.fireplace_outlined,
                buttonName: "Contact Info"),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
