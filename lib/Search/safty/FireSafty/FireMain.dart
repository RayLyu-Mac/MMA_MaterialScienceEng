import 'package:flutter/material.dart';
import 'FireData.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:mma_mse/Search/safty/ShowerWasher/location.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:mma_mse/Search/tools/phaseDiagram/zoomIn.dart';
import 'package:mma_mse/Search/Test/Test_Page/test_data.dart';
import 'package:google_fonts/google_fonts.dart';

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

  List<FireSafetyData> result = fireSafetyData;

  Container _buildGradientBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red.shade50,
            Colors.orange.shade50,
          ],
        ),
      ),
    );
  }

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
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black.withOpacity(0.7),
            title: Text(
              "Fire Class",
              style: GoogleFonts.poppins(
                fontSize: _screenH / 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          drawer: Container(
            width: _screenWidth * 0.7,
            child: tensileResult(),
          ),
          body: Stack(
            children: [
              _buildGradientBackground(),
              ListView.builder(
                itemCount: result.length,
                itemExtent: _screenH * 0.5,
                controller: controller,
                itemBuilder: (BuildContext context, int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Card(
                      color: Colors.white.withOpacity(0.9),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              result[index].title,
                              style: GoogleFonts.poppins(
                                fontSize: result[index].titleFontsize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              result[index].imageUrl,
                              fit: BoxFit.cover,
                              height: _screenH * 0.25,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              result[index].content,
                              style: GoogleFonts.poppins(
                                fontSize: result[index].titleFontsize,
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 700),
                                  child: eyewashStation(eye: false, fire: true),
                                ),
                              );
                            },
                            icon: Icon(Icons.location_city_outlined),
                            label: Text(
                              "Location of the extinguisher",
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
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
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text(
          "Fire Emergency Procedure",
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red.shade50, Colors.orange.shade50],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemExtent: 165,
                itemCount: content.length,
                controller: controller,
                itemBuilder: (BuildContext context, int index1) {
                  return Card(
                    margin: EdgeInsets.fromLTRB(25, 16, 25, 8),
                    elevation: 4,
                    color: Colors.white.withOpacity(0.9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            content[index1][0],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            content[index1][1],
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
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
        ),
      ),
    );
  }
}
