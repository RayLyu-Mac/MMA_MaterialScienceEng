import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/ICP_OES/ICPMain.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
import "package:mma_mse/equipment/BulkAbrasive/BulkAbrasiveMain.dart";
import 'package:mma_mse/equipment/Automatic Micro Hardness Tester/AMHMain.dart';
import 'package:mma_mse/equipment/CharpyImpact/Charpy.dart';
import 'package:mma_mse/equipment/Keyence Microscope/keyenceMain.dart';
import 'package:mma_mse/equipment/manualRW/Rockwell.dart';
import 'package:mma_mse/equipment/siliconCarbideFurnace/SiCFurnaceMain.dart';
import 'package:mma_mse/equipment/autoPolisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/Nikon Microscope/NikonMicroMain.dart';
import 'package:mma_mse/equipment/blueFurnace/blurFMain.dart';
import 'package:mma_mse/equipment/LlyoldTensile/LlyoldMain.dart';
import 'package:mma_mse/equipment/digitalRW/digitalRWMain.dart';
import 'package:mma_mse/equipment/manualMicroHardness/manualMHMain.dart';
import 'package:mma_mse/equipment/precCutter/PrecisionCutterMain.dart';

class HeroType {
  String title;
  String subTitle;
  String fText;
  String image;
  List _heroType;
  Widget pageTo;
  Color materialColor;

  HeroType(
      {this.title,
      this.subTitle,
      this.fText,
      this.image,
      this.materialColor,
      this.pageTo});
  List<HeroType> createSampleList() {
    List _heroType = List<HeroType>();
    return _heroType
      ..add(HeroType(
          title: 'Universal Tensile Machine',
          subTitle: 'Test for material mechanical property',
          fText:
              'Avaiable on:  \nJHE 1st floor Mechanical Lab \nJHE 2nd floor 216  \n  \nTest can be operate: \nTensile Test \nThreee Point Test',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mts.jpg?raw=true',
          materialColor: Colors.amber[800],
          pageTo: tensile_test()))
      ..add(HeroType(
          title: 'Manual Rockwell Hardness Tester',
          subTitle: 'Test for material hardness',
          pageTo: hardness_test(),
          fText:
              'Device Needed: Rockwell machine.\n \nMaterial property can be tested: hardness ',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/manualRW.jpg?raw=true',
          materialColor: Colors.blueGrey[600]))
      ..add(HeroType(
          title: 'ICP-OES',
          subTitle: 'Inductive Coupled Plasma Optical Emission Spectrometer',
          pageTo: ICP_OES_Main(),
          fText:
              'Avaiable on: \nJHE Room 239 \n \nFeatures: \n•Varian Vista Pro. \n•CCD camera as a dectector with a very wide range of available wavelengths, agrating wavelength selector and powerful sofrware to capture and analyze the data. \n•The instrument is configured for liquid samples only',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/icp.jpg?raw=true',
          materialColor: Colors.redAccent[700]))
      ..add(HeroType(
          title: 'Automatic Bulk Abrasive Cutter',
          subTitle: 'Cut the material',
          fText: 'Avaiable on JHE 242',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/abc.jpg?raw=true',
          pageTo: BulkAbrasive_Main(),
          materialColor: Colors.purple))
      ..add(HeroType(
          title: 'Charpy Impact Tester',
          subTitle: 'Used to measure the relative toughness of a material',
          fText: 'Avaiable on JHE 242',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/cit.jpg?raw=true',
          pageTo: charpy_test(),
          materialColor: Colors.grey))
      ..add(HeroType(
          title: 'Automatic Micro-Hardness Tester',
          subTitle: 'Machine Used for Hardness Test',
          fText: 'Avaiable on JHE 242',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mht.jpg?raw=true',
          pageTo: AutomaticMicroHardnessMain(),
          materialColor: Colors.blue))
      ..add(HeroType(
          title: 'Keyence Microscope',
          subTitle: 'Microscope for microstructure analysis',
          fText: 'Avaiable on JHE 241',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/kms.jpg?raw=true',
          pageTo: KeyenceMMain(),
          materialColor: Colors.blueAccent))
      ..add(HeroType(
          title: 'Silicon Carbide Furnace',
          subTitle:
              'The High temperature silicon carbide furnace is used when the user needs a temperature higher than 950°C. ',
          fText: 'Avaiable on JHE 244',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/hscf.jpg?raw=true',
          pageTo: SiCFurnace(),
          materialColor: Colors.blueAccent))
      ..add(HeroType(
          title: 'Automatic Polisher',
          subTitle:
              'The purpose to grind and polish a material is to reveal the microstructure. ',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/ap.jpg?raw=true',
          pageTo: AutoPolisherMain(),
          materialColor: Colors.blueAccent))
      ..add(HeroType(
          title: 'Blue Furnace',
          subTitle:
              'heat a sample to a high enough temperature to change the microstructure',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true',
          pageTo: BlueFurnace(),
          materialColor: Colors.blueAccent))
      ..add(HeroType(
          title: 'Nikon Microscope',
          subTitle:
              'Light Microscope for investigating the material microstructure',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/niko.jpg?raw=true',
          pageTo: NikonMicro(),
          materialColor: Colors.blue[300]))
      ..add(HeroType(
          title: 'Llyods Tensile Tester',
          subTitle: 'Apply tensile test to find according aterial property',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/LyolTenT.jpg?raw=true',
          pageTo: LlyoldTensileTester(),
          materialColor: Colors.purpleAccent))
      ..add(HeroType(
          title: 'Digital Rockwell Hardness Tester',
          subTitle: 'Test the hardness of the material',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/digiRW.jpg?raw=true',
          pageTo: DigitalRWMain(),
          materialColor: Colors.yellowAccent))
      ..add(HeroType(
          title: 'Manual MicroHardness tester',
          subTitle: 'Test the hardness of the material',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true',
          pageTo: ManualMicroHardness(),
          materialColor: Colors.yellowAccent))
      ..add(HeroType(
          title: 'Precision cutter',
          subTitle: 'The precision cutter is used for small delicate cuts.',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true',
          pageTo: BPcutterMain(),
          materialColor: Colors.blueAccent[400]))
      ..add(HeroType(
          title: 'Manual MicroHardness tester',
          subTitle: 'Test the hardness of the material',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true',
          pageTo: ManualMicroHardness(),
          materialColor: Colors.yellowAccent))
      ..add(HeroType(
          title: 'Manual MicroHardness tester',
          subTitle: 'Test the hardness of the material',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true',
          pageTo: ManualMicroHardness(),
          materialColor: Colors.yellowAccent))
      ..add(HeroType(
          title: 'Manual MicroHardness tester',
          subTitle: 'Test the hardness of the material',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true',
          pageTo: ManualMicroHardness(),
          materialColor: Colors.yellowAccent));
  }
}
