import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'package:mma_mse/customTile.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CharpyBackG extends StatefulWidget {
  CharpyBackG({Key? key}) : super(key: key);

  @override
  _CharpyBackGState createState() => _CharpyBackGState();
}

Map<String, String> data = {
  "Tests Standard":
      "Method Followed with ASTM D6110: \nTest consist of striking a suitable specimen with a hammer on a pendulum arm while the specimen is held securely at each end.  The hammer strikes opposite the notch. The energy absorbed by the specimen is determined precisely by measuring the decrease in motion of the pendulum arm. ",
  "Ductile to Brittle Transition":
      "Purpose: \nto determine the ductile to brittle temperature by plotting the temperature with the impact strength \n\nMaterial Needed: \n•Hot Plate with beaker and water\n•Ice \n•Dry Ice and ethanol\n•Styrofoam Container\n•Liquid Nitrogen",
  "Factors May Affect the Test":
      "\n•1. Interial Effect\n•2.	The complexity of the loading at high impact rate and the boundary conditions \n•3.	The effect of high strain rates on constitutive equations \n•4.	The non-isothermal character of test \n•5.	3-D aspect of the fracture behavior (tunneling effect)\n•6.	Competition between ductile and brittle fracture ",
};
final String backImg = "assest/test/hdtbg1.jpg";
final List<Widget> pages = [
  pageMode(
    content: data.values.toList()[0],
    backImg: backImg,
    title: "Tests Standard",
  ),
  pageMode(
    content: data.values.toList()[1],
    backImg: backImg,
    title: "Ductile to Brittle Transition",
  ),
  pageMode(
    content: data.values.toList()[2],
    backImg: backImg,
    title: "Factors May Affect the Test",
  ),
];

class _CharpyBackGState extends State<CharpyBackG> {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Drawer cutter_bg() => Drawer(
            child: ListView(
          children: [
            DrawerHeader(child: Text("Background Theory for Charpy Impact")),
            customListTile(
                controller: controller,
                name: "Tests Standard",
                pageTo: 0,
                fonts: 15),
            customListTile(
                controller: controller,
                name: "Ductile to Brittle Transition",
                pageTo: 1,
                fonts: 15),
            customListTile(
                controller: controller,
                name: "Factors May Affect the Test",
                pageTo: 2,
                fonts: 15),
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
