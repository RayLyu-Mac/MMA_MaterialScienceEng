import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'location.dart';

class ChemicalShowerEyeWasher extends StatefulWidget {
  ChemicalShowerEyeWasher({Key? key}) : super(key: key);

  @override
  _ChemicalShowerEyeWasherState createState() =>
      _ChemicalShowerEyeWasherState();
}

class _ChemicalShowerEyeWasherState extends State<ChemicalShowerEyeWasher> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;
  List tiles = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.85;
      adjust = 0.85;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Location for eye washer & chemical shower"),
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: _screenH / 40,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 40, _screenH / 50,
                      _screenWidth / 60, _screenH / 40),
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 1.03, height: _screenH / 2.2),
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(
                        color: Colors.red, width: 6, style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.green,
                        width: 6,
                        style: BorderStyle.solid),
                  )),
                  child: Column(
                    children: [
                      Text(
                        "Eye Washer Station",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: _screenH / 33),
                      ),
                      SizedBox(
                        height: _screenH / 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.5,
                                height: _screenH / 3.2),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/eyewash.png?raw=true"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: _screenWidth / 20,
                          ),
                          Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.3,
                                height: _screenH / 3.3),
                            child: Text(
                              "Eyewash stations are designed to flush the eye and face area only. Use eye wash station when chemical accidentally spills to eye",
                              style: TextStyle(fontSize: _screenH / 48),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: _screenH / 50,
                      ),
                    ],
                  )),
              TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 700),
                            child: eyewashStation(
                              eye: true,
                              fire: false,
                            ),
                            type: PageTransitionType.scale,
                            alignment: Alignment.topCenter));
                  },
                  icon: Icon(Icons.wash_rounded),
                  label: Text("Check the locations")),
              SizedBox(
                height: _screenH / 25,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 40, _screenH / 50,
                      _screenWidth / 60, _screenH / 40),
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 1.03, height: _screenH / 1.6),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        color: Colors.red, width: 6, style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.green,
                        width: 6,
                        style: BorderStyle.solid),
                  )),
                  child: Column(
                    children: [
                      Text(
                        "Chemical Shower",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: _screenH / 35),
                      ),
                      SizedBox(
                        height: _screenH / 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.5,
                                height: _screenH / 2.5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/shower.png?raw=true"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: _screenWidth / 20,
                          ),
                          Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.3,
                                height: _screenH / 2.3),
                            child: Text(
                              "A safety shower is a unit designed to wash an individual's head and body which has come into contact with hazardous chemicals. Large volumes of water are used and a user may need to take off any clothing that has been contaminated with hazardous chemicals. Safety showers cannot be used for flushing an individual's eyes, due to the high pressure of water from the shower, which can damage a user's eyes.",
                              style: TextStyle(fontSize: _screenH / 48),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: _screenH / 50,
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
