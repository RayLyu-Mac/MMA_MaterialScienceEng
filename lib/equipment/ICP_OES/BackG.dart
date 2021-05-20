import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'package:mma_mse/customTile.dart';

class ICP_OES_bg extends StatefulWidget {
  ICP_OES_bg({Key key}) : super(key: key);

  @override
  _ICP_OES_bgState createState() => _ICP_OES_bgState();
}

Map<String, String> document = {
  "Sample Introduction System":
      "•The samples for the ICP are all dissolved in acid or acid mixtures \n \n•The sample is introduced using a peristaltic pump into the nebulizer.\n \n•The nebulizer is a V-groove type, where the liquid is converted to an aerosol.\n \n •This aerosol enters the Sturman Masters spray chamber, which is a double pass to efficiently carry the very fine droplets (about 2% of the sample), to the torch.\n \n•The larger droplets are pumped as waste.",
  "Excitation Source":
      "•This aerosol is carried in an Argon gas stream to the torch where the sample is heated in an Argon plasma to 10,000°K. \n \n•At this temperature, the sample is predominantly singly charged ions and excited atomic species.\n \n•These highly excited species emit light of specific wavelengths in a pattern or spectrum that is unique for every element in the sample. \n \n•The intensity of the spectrum is related to the concentration of the element in the sample.",
  "Spectrometer":
      "•The light from the torch passes through a N2 purged optical path, to eliminate absorption of the UV wavelengths.\n \n•This, and the use of MgF2 lenses, enables wavelengths from 167-785 nm to be examined. \n \n•The optical path is 1 meter long, providing good separation between lines in close proximity. \n ",
  "Detection System":
      "\n•The grating separates the light into its component wavelengths, and a CaF2 prism separates the light into low and high orders, giving a two-dimensional array of orders and wavelengths called an Echellogram. \n \n•This is mapped onto the VistaChip, which is a CCD camera specifically designed for the application.",
  "Data Acquisition and Processing":
      "•Data acuisite from CCD camera\n \n•It provides the operator with information and control of all the important parameters in the ICP operations. \n \n•It contains a library of almost all the important wavelengths of all elements, so that interference free wavelengths can be chosen for each element to be analyzed. \n \n•It provides a comprehensive method development and editing, and it provides several curve fitting algorithms for optimizing the concentration calculations from the calibrating solutions",
  "Blank Result Expected":
      "•Blank is important for calibration, the normal blank intensity plot should have no peak \n \n•If a peak is exist then there will be two possible reasons.",
  "Reason one: Natural Interference":
      "•First if there is a intensity peak take a note\n•Rerun the test \n•If the intensity is same(within 1 – 5% of the previous intensity value), and the peaks overlap each other this indicates a natural interference.\n•This will not affect your result",
  "Reason two: Carry Over or Memory Effect":
      "•Spray Chamber can be contaiminated by the previous analysis \n•Look at the intenstiy and if the peaks are dropping this shows that the contaimination is being flushed out\n•Take note of the intensity and repeat with the blank"
};
String backImg = "assest/test/hdtbg1.jpg";
List<Widget> pages = [
  pageMode(
      doucment: document,
      docNumber: "Sample Introduction System",
      back_img: backImg,
      title: "Sample Introduction System"),
  pageMode(
      doucment: document,
      docNumber: "Excitation Source",
      back_img: backImg,
      title: "Excitation Source"),
  pageMode(
      doucment: document,
      docNumber: "Spectrometer",
      back_img: backImg,
      title: "Spectrometer"),
  pageMode(
      doucment: document,
      docNumber: "Detection System",
      back_img: backImg,
      title: "Detection System"),
  pageMode(
      doucment: document,
      docNumber: "Data Acquisition and Processing",
      back_img: backImg,
      title: "Data Acquisition and Processing"),
  pageMode(
      doucment: document,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/icpBlankCali.png?raw=true",
      docNumber: "Blank Result Expected",
      back_img: backImg,
      title: "Blank Result Expected"),
  pageMode(
      doucment: document,
      docNumber: "Reason one: Natural Interference",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/icpNaturaI.png?raw=true",
      back_img: backImg,
      title: "Reason one: Natural Interference"),
  pageMode(
      doucment: document,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/theory/icpCarry.png?raw=true",
      docNumber: "Reason two: Carry Over or Memory Effect",
      back_img: backImg,
      title: "Reason two: Carry Over or Memory Effect"),
];

class _ICP_OES_bgState extends State<ICP_OES_bg> {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Drawer icpOesBg() => Drawer(
          child: ListView(children: [
            DrawerHeader(child: Text("Theory For ICO-OES")),
            ExpansionTile(
              title: Text("ICP Component"),
              children: [
                customListTile(
                    controller: controller,
                    name: "Sample Introduction System",
                    pageTo: 0,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "Excitation Source",
                    pageTo: 1,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "Spectrometer",
                    pageTo: 2,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "Detection System",
                    pageTo: 3,
                    fonts: 15),
                customListTile(
                    controller: controller,
                    name: "Data Acquisition and Processing",
                    pageTo: 4,
                    fonts: 15),
              ],
            ),
            ExpansionTile(
              title: Text("Data Analysis"),
              children: [
                customListTile(
                    controller: controller,
                    name: "Calibration Blank Result Expected",
                    pageTo: 5,
                    fonts: 15),
                ExpansionTile(
                  title: Text("Possible Reason for peak"),
                  children: [
                    customListTile(
                        controller: controller,
                        name: "Reason one: Natural Interference",
                        pageTo: 6,
                        fonts: 15),
                    customListTile(
                        controller: controller,
                        name: "Reason one: Natural Interference",
                        pageTo: 7,
                        fonts: 15),
                  ],
                ),
              ],
            )
          ]),
        );
    return Scaffold(
        drawer: icpOesBg(),
        body: PageView(controller: controller, children: pages));
  }
}
