import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'package:mma_mse/customTile.dart';

class BulkAbrasiveCutter extends StatefulWidget {
  BulkAbrasiveCutter({Key key}) : super(key: key);

  @override
  _BulkAbrasiveCutterState createState() => _BulkAbrasiveCutterState();
}

Map<String, String> data = {
  "CW12-50":
      "Rubber Bonded for Delicate bulk cuts (thickness of blade 1.016mm).  This blade is intended for ferrous materials; but the hardness of the material must not exceed 40 HRC.",
  "51-MET":
      "Resin Bonded “AL2O3” for Extremely hard ferrous alloys, Tool Steels, White Cast Irons, or any ferrous material with a hardness of 60 HRC or Greater.",
  "52-MET":
      "Resin Bonded “AL2O3” for Hard ferrous alloys, and Hardened steel with hardness between 50 – 60 HRC.",
  "53-MET":
      "Resin Bonded “AL2O3” for Medium hard steels, and Super Alloys 35 – 50 HRC.",
  "54-MET": "Resin Bonded “AL2O3” for Soft steels 15 -35 HRC",
  "10S30":
      "Resin Bonded “Silicon Carbide” for Soft Non-Ferrous materials (30 – 300 HV)",
};
String back_img =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/bg.jpg?raw=true";
final List<Widget> pages = [
  pageMode(
    doucment: data,
    back_img: back_img,
    title: "CW12-50",
    addOnImg:
        "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/automatic_cutter/cw12.jpg?raw=true",
  ),
  pageMode(
    doucment: data,
    back_img: back_img,
    title: "51-MET",
    addOnImg:
        "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/automatic_cutter/51met.jpg?raw=true",
  ),
  pageMode(
    doucment: data,
    back_img: back_img,
    title: "52-MET",
    addOnImg:
        "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/automatic_cutter/52met.jpg?raw=true",
  ),
  pageMode(
    doucment: data,
    back_img: back_img,
    title: "53-MET",
    addOnImg:
        "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/automatic_cutter/53met.jpg?raw=true",
  ),
  pageMode(
    doucment: data,
    back_img: back_img,
    title: "54-MET",
    addOnImg:
        "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/automatic_cutter/54met.jpg?raw=true",
  ),
  pageMode(
    doucment: data,
    back_img: back_img,
    title: "10S30",
    addOnImg:
        "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/automatic_cutter/10s30.jpg?raw=true",
  ),
  PossErBulkAbraCut()
];

class _BulkAbrasiveCutterState extends State<BulkAbrasiveCutter> {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Drawer cutter_bg() => Drawer(
            child: ListView(
          children: [
            DrawerHeader(child: Text("Background for Bulk Abrasive Cutter")),
            ExpansionTile(
              title: Text("Blades"),
              children: [
                customListTile(
                    controller: controller,
                    name: "Cw12-50",
                    pageTo: 0,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "51-MET",
                    pageTo: 1,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "52-MET",
                    pageTo: 2,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "53-MET",
                    pageTo: 3,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "54-MET",
                    pageTo: 4,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "10S30",
                    pageTo: 5,
                    fonts: 15),
              ],
            ),
            customListTile(
                name: "Possible Errors",
                pageTo: 6,
                fonts: 15,
                controller: controller)
          ],
        ));
    return Scaffold(
      drawer: cutter_bg(),
      body: PageView(
        children: pages,
        controller: controller,
      ),
    );
  }
}

class PossErBulkAbraCut extends StatefulWidget {
  PossErBulkAbraCut({Key key}) : super(key: key);

  @override
  _PossErBulkAbraCutState createState() => _PossErBulkAbraCutState();
}

class _PossErBulkAbraCutState extends State<PossErBulkAbraCut> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Possible Error May Happens..."),
          backgroundColor: Colors.black,
        ),
        body: Container(
            constraints: BoxConstraints.expand(
                width: _screenWidth / 1, height: _screenH / 1),
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(
                        "assest/equipment/theory/automatic_cutter/posserabracut.png"),
                    fit: BoxFit.fitWidth))));
  }
}
