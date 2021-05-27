import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/ICP_OES/ICPMain.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
import 'package:mma_mse/equipment/cutter/BulkAbrasiveCutter/BulkAbrasiveMain.dart';
import 'package:mma_mse/equipment/Hardness/micro/AMHMain.dart';
import 'package:mma_mse/equipment/CharpyImpact/Charpy.dart';
import 'package:mma_mse/equipment/Microscope/Keyence/keyenceMain.dart';
import 'package:mma_mse/equipment/Hardness/ManualRW/Rockwell.dart';
import 'package:mma_mse/equipment/furnace/Sic/SiCFurnaceMain.dart';
import 'package:mma_mse/equipment/polisher/automaticPolisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/Microscope/Nikon/NikonMicroMain.dart';
import 'package:mma_mse/equipment/furnace/blue/blurFMain.dart';
import 'package:mma_mse/equipment/LlyoldTensile/LlyoldMain.dart';
import 'package:mma_mse/equipment/Hardness/digitalRW/digitalRWMain.dart';
import 'package:mma_mse/equipment/Hardness/manualMicroHardness/manualMHMain.dart';
import 'package:mma_mse/equipment/cutter/precCutter/PrecisionCutterMain.dart';
import 'package:mma_mse/equipment/MountPress/EcoPress/EcoMain.dart';
import 'package:mma_mse/equipment/MountPress/MET/METMain.dart';
import 'package:mma_mse/equipment/MountPress/Strues/StruesMain.dart';
import 'package:mma_mse/equipment/ManualGrinder/MgrinderMain.dart';
import 'package:mma_mse/equipment/polisher/manualPolisher/manual_polisher_MainPage.dart';
import 'package:mma_mse/equipment/cutter/Buehler Precision Cutter/BuehlerMain.dart';
import 'package:mma_mse/equipment/polisher/Bupolisher/BuPolisherMain.dart';
import 'package:mma_mse/equipment/Etching/EtchingMain.dart';

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
          title: 'Llyods Tensile Tester',
          subTitle: 'Apply tensile test to find according aterial property',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/LyolTenT.jpg?raw=true',
          pageTo: LlyoldTensileTester(),
          materialColor: Colors.amber[800]))
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
          title: 'Automatic Micro-Hardness Tester',
          subTitle: 'Machine Used for Hardness Test',
          fText: 'Avaiable on JHE 242',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mht.jpg?raw=true',
          pageTo: AutomaticMicroHardnessMain(),
          materialColor: Colors.blueGrey[600]))
      ..add(HeroType(
          title: 'Digital Rockwell Hardness Tester',
          subTitle: 'Test the hardness of the material',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/digiRW.jpg?raw=true',
          pageTo: DigitalRWMain(),
          materialColor: Colors.blueGrey[600]))
      ..add(HeroType(
          title: 'Manual MicroHardness tester',
          subTitle: 'Test the hardness of the material',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true',
          pageTo: ManualMicroHardness(),
          materialColor: Colors.blueGrey[600]))
      ..add(HeroType(
          title: 'Keyence Microscope',
          subTitle: 'Microscope for microstructure analysis',
          fText: 'Avaiable on JHE 241',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/kms.jpg?raw=true',
          pageTo: KeyenceMMain(),
          materialColor: Colors.purpleAccent))
      ..add(HeroType(
          title: 'Nikon Microscope',
          subTitle:
              'Light Microscope for investigating the material microstructure',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/niko.jpg?raw=true',
          pageTo: NikonMicro(),
          materialColor: Colors.purpleAccent))
      ..add(HeroType(
          title: 'Silicon Carbide Furnace',
          subTitle:
              'The High temperature silicon carbide furnace is used when the user needs a temperature higher than 950°C. ',
          fText: 'Avaiable on JHE 244',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/hscf.jpg?raw=true',
          pageTo: SiCFurnace(),
          materialColor: Colors.redAccent))
      ..add(HeroType(
          title: 'Blue Furnace',
          subTitle:
              'heat a sample to a high enough temperature to change the microstructure',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true',
          pageTo: BlueFurnace(),
          materialColor: Colors.redAccent))
      ..add(HeroType(
          title: 'Automatic Bulk Abrasive Cutter',
          subTitle: 'Cut the material',
          fText: 'Avaiable on JHE 242',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/abc.jpg?raw=true',
          pageTo: BulkAbrasive_Main(),
          materialColor: Colors.greenAccent[400]))
      ..add(HeroType(
          title: 'Buehler Precision Cutter',
          subTitle:
              'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.',
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bcutter.jpg?raw=true',
          pageTo: BuehlerCutterMain(),
          materialColor: Colors.greenAccent[400]))
      ..add(HeroType(
          title: 'Precision cutter',
          subTitle: 'The precision cutter is used for small delicate cuts.',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true',
          pageTo: PcutterMain(),
          materialColor: Colors.greenAccent[400]))
      ..add(HeroType(
          title: 'Mounting Press ECOPRESS 200',
          subTitle:
              'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.',
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/ecop.jpg?raw=true',
          pageTo: EcoPress(),
          materialColor: Colors.grey[600]))
      ..add(HeroType(
          title: 'Mounting Press (Struers)',
          subTitle:
              'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.',
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/stru.jpg?raw=true',
          pageTo: StruesMain(),
          materialColor: Colors.grey[600]))
      ..add(HeroType(
          title: 'Mounting Press (METLAB)',
          subTitle:
              'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.',
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/met.jpg?raw=true',
          pageTo: METPress(),
          materialColor: Colors.grey[600]))
      ..add(HeroType(
          title: 'Automatic Polisher',
          subTitle:
              'The purpose to grind and polish a material is to reveal the microstructure. ',
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/ap.jpg?raw=true',
          pageTo: AutoPolisherMain(),
          materialColor: Colors.lightBlueAccent))
      ..add(HeroType(
          title: 'Buehler Manual Polisher',
          subTitle:
              'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.',
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bmaPolisher.jpg?raw=true',
          pageTo: BuehlerPolisherMain(),
          materialColor: Colors.lightBlueAccent))
      ..add(HeroType(
          title: 'Manual Polisher',
          subTitle:
              'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.',
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mpolisher.jpg?raw=true',
          pageTo: BuehlerPolisherMain(),
          materialColor: Colors.lightBlueAccent))
      ..add(HeroType(
          title: 'ICP-OES',
          subTitle: 'Inductive Coupled Plasma Optical Emission Spectrometer',
          pageTo: ICP_OES_Main(),
          fText:
              'Avaiable on: \nJHE Room 239 \n \nFeatures: \n•Varian Vista Pro. \n•CCD camera as a dectector with a very wide range of available wavelengths, agrating wavelength selector and powerful sofrware to capture and analyze the data. \n•The instrument is configured for liquid samples only',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/icp.jpg?raw=true',
          materialColor: Colors.redAccent[700]))
      ..add(HeroType(title: 'Charpy Impact Tester', subTitle: 'Used to measure the relative toughness of a material', fText: 'Avaiable on JHE 242', image: 'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/cit.jpg?raw=true', pageTo: charpy_test(), materialColor: Colors.grey))
      ..add(HeroType(title: 'Manual Grinder', subTitle: 'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.', fText: 'Avaiable on JHE 245', image: 'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true', pageTo: ManualGrinder(), materialColor: Colors.blueGrey[400]))
      ..add(HeroType(title: 'Etching', subTitle: 'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.', fText: 'Avaiable on JHE 245', image: 'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/eth.jpg?raw=true', pageTo: Etching(), materialColor: Colors.redAccent));
  }
}
