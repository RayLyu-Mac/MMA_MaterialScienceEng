import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'package:mma_mse/customTile.dart';

Map<String, String> blades = {
  "4F12":
      "Ferrous Blade Rubber bonded “Al2O3” this is for medium hard steel (45HRC or less); the thickness of this blade is (0.3 mm).",
  "5F20H":
      "Ferrous Blade Rubber Bonder “Al2O3” for very hard steel (45 HRC or greater).",
  "4NF12":
      "Non-Ferrous Rubber Bonded “SiC” low hardness material (0.3mm thick).",
  "370SA": "Saw blade for cutting plastics, and very soft metals.",
  "M412C":
      "CBN wafering blade for sectioning high speed tool steels, cobalt base alloys, nickel base super alloys, and ceramics.",
};
List img = [
  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/automatic_cutter/Precision%20Cutter%20Blade/4F12.jpg?raw=true",
  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/automatic_cutter/Precision%20Cutter%20Blade/5F20H.jpg?raw=true",
  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/automatic_cutter/Precision%20Cutter%20Blade/4NF12.jpg?raw=true",
  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/automatic_cutter/Precision%20Cutter%20Blade/370SA.jpg?raw=true",
  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/automatic_cutter/Precision%20Cutter%20Blade/M412C.jpg?raw=true"
];

class precisionBlade extends StatefulWidget {
  precisionBlade({Key? key}) : super(key: key);

  @override
  _precisionBladeState createState() => _precisionBladeState();
}

class _precisionBladeState extends State<precisionBlade> {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Drawer precutter() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Text("Background theory for precision cutter")),
              for (var i = 0; i < img.length; i++)
                customListTile(
                    name: blades.keys.toList()[i],
                    pageTo: i,
                    fonts: 13,
                    controller: controller)
            ],
          ),
        );
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          for (var i = 0; i < img.length; i++)
            pageMode(
                title: blades.keys.toList()[i],
                content: blades.values.toList()[i],
                back_img: img[i])
        ],
      ),
    );
  }
}
