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
import 'package:mma_mse/equipment/Microwave Digestor/MicroDigMain.dart';
import 'package:mma_mse/equipment/polisher/BeuAutoPolisher/BehAutoPolMain.dart';
import 'package:mma_mse/equipment/ManualCompressP/ManualCompMain.dart';

class HeroType {
  String title;
  String subTitle;
  String fText;
  String image;
  List _heroType;
  Widget pageTo;
  Color materialColor;

  String purposeRW = "Machine for testing material hardness";
  String purptensileT = "Test for material mechanical property";
  String purpmicrosco = "Machine for investigating material microstructure";
  String purpfurnace = "Use High Temp Env to change material's microstructure";
  String purpCutting = "Machine for sectioning the sample";
  String purpoMountg = "Machine for preparaing meturllgical analysis sample";
  String purpPolishg = "Machine for polishing the meturllgical analysis sample";
  Color tensile = Colors.amber[100];

  Color hardness = Colors.blueGrey[100];
  Color microsco = Colors.purple[100];
  Color furnace = Colors.redAccent[100];
  Color cutter = Colors.greenAccent[100];
  Color mountP = Colors.indigo[100];
  Color polish = Colors.lightBlue[100];
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
          subTitle: purptensileT,
          fText:
              'Avaiable on:JHE 134\nManufacturer: MTS\nMaximum Rated: 30\nForce Capacity Options: 100/250/500/1k/2.5k/5k/10k/20k/30kN\nTest Zone: Single\nMaximum Test Speed: 1020mm/min\nPosition Resolution: 0.00006mm\nPower: 200 - 230 V AC, 12 Amps, 50 / 60 Hz, 2400 W\nSpace Between Columns: 420 mm\nVertical Test Space: 1200mm (standard)\nFrame Height: 1752mm(standard) \n Frame Width:826mm\nFrame Depth: 768mm\nFrame Weight: 305 kg',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mts.jpg?raw=true',
          materialColor: tensile,
          pageTo: tensile_test()))
      ..add(HeroType(
          title: 'Llyods Tensile Tester',
          subTitle: purptensileT,
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/LyolTenT.jpg?raw=true',
          pageTo: LlyoldTensileTester(),
          materialColor: tensile))
      ..add(HeroType(
          title: 'Manual Rockwell Hardness Tester',
          subTitle: purposeRW,
          pageTo: hardness_test(),
          fText:
              'Device Needed: Rockwell machine.\n \nMaterial property can be tested: hardness ',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/manualRW.jpg?raw=true',
          materialColor: hardness))
      ..add(HeroType(
          title: 'Automatic Micro-Hardness Tester',
          subTitle: purposeRW,
          fText: 'Avaiable on JHE 242',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mht.jpg?raw=true',
          pageTo: AutomaticMicroHardnessMain(),
          materialColor: hardness))
      ..add(HeroType(
          title: 'Digital Rockwell Hardness Tester',
          subTitle: purposeRW,
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/digiRW.jpg?raw=true',
          pageTo: DigitalRWMain(),
          materialColor: hardness))
      ..add(HeroType(
          title: 'Manual MicroHardness tester',
          subTitle: purposeRW,
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true',
          pageTo: ManualMicroHardness(),
          materialColor: hardness))
      ..add(HeroType(
          title: 'Keyence Microscope',
          subTitle: purpmicrosco,
          fText:
              'Avaiable on JHE 241\nManufacturer: Keyence\nCamera:\nImage receiving element: 1/1.7-inch, 12.22-megapixel CMOS image sensor\nHigh dynamic range: 16-bit intensity range through RGB data\nResolution (Standard): 2048 (H) × 1536 (Vn)\n(High): 6144 (H) × 4608 (V)\nFrame rate: 50 F/S (max.)\nImage receiving element:  1/1.8 inch, 3.19 megapixel\nLCD Monitor:\nSize: Color LCD (IPS type), 27-inch\nPixel pitch: 0.1554 mm (H) × 0.1554 mm (V)\nNumber of Pixels: 3840 (H) × 2160 (V)\nColors: Approx. 1.07 billion colors',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/kms.jpg?raw=true',
          pageTo: KeyenceMMain(),
          materialColor: microsco))
      ..add(HeroType(
          title: 'Nikon Microscope',
          subTitle: purpmicrosco,
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/niko.jpg?raw=true',
          pageTo: NikonMicro(),
          materialColor: microsco))
      ..add(HeroType(
          title: 'Silicon Carbide Furnace',
          subTitle: purpfurnace,
          fText: 'Avaiable on JHE 244',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/hscf.jpg?raw=true',
          pageTo: SiCFurnace(),
          materialColor: furnace))
      ..add(HeroType(
          title: 'Blue Furnace',
          subTitle: purpfurnace,
          fText:
              'Avaiable on JHE 129\nE14 with Sentry Xpress, 240V (blue furnace)\nManufacturer: Paragon\nMax Temp:2000° F/ 1093° C\nVoltage:240\nHertz:50/60\nWatts:3120\nCordset:NEMA 6-20P\nController:Sentry Xpress 3-Key Controller\nVolume:0.89 cu ft 25.2 kg\nWidth Diameter:13″\nDepth:8.75″\nHeight:13.5″\nWall Thickness (Inches):2.5″\nTop Thickness (Inches):2.5″\nBottom Thickness (Inches):2.5″',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true',
          pageTo: BlueFurnace(),
          materialColor: furnace))
      ..add(HeroType(
          title: 'Automatic Bulk Abrasive Cutter',
          subTitle: purpCutting,
          fText:
              'Avaiable on JHE 242\nBulk Abrasive: AbrasiMatic™ 300 Automatic & Manual Abrasive Cutter \nManufacturer: Buehler\nRecirculation Tank Capacity: 83L \nHose Fitting Sizes, Intake: 1in; Discharge: 2in \nSound Rating:78dBA - no load\nFume Extractor Size: 75mm cut-out diameter\nControl Panel: 175mm diagonal; 320x240 pixels; 256 color screen, backlight NEMA4 [IP 65] water resistant\nT-slot table dimensions; 365 x 254mm; 12mm wide t-slots\nTravel movement: Z-Axis: 150mm; Y-Axis: 260mm; X-Axis: 70mm\nAuto Y-Axis Feed Rate: 0.3-2mm/sec\n Abrasive Wheel Diameter & Arbor:maximum 305mm & 32mm\nCutting Chamber: 914 x 558 x 203mm',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/abc.jpg?raw=true',
          pageTo: BulkAbrasive_Main(),
          materialColor: cutter))
      ..add(HeroType(
          title: 'Buehler Precision Cutter',
          subTitle: purpCutting,
          fText:
              'Avaiable on JHE 129,IsoMet High Speed Precision Cutter\nManufacturer: Buehler\nProgramming:Retains Last Settings, Serial Sectioning\nBlade Position Settings:Horizontal: 0 - 50mm\n Cut Length Increment:0.25mm\nFeed Rate Range:. 1.2 - 25.4mm/min\nFeed Rate Increment:0.01in increments [1mm increments]\nBlade Speed:1000-5000rpm\nCut Capacity (Diameter): 71mm\nCoolant Systems:Built-in Recirculating System, 1gal [4L]\nCut Chamber Size: 228mm x 508mm\nMachine Dimensions:Width: 610mm, Depth: 30in [762mm],Height (Hood Opened): 915mm,Height (Hood Closed): 483mm\nWeight: 71.2kg',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bcutter.jpg?raw=true',
          pageTo: BuehlerCutterMain(),
          materialColor: cutter))
      ..add(HeroType(
          title: 'Precision cutter',
          subTitle: purpCutting,
          fText:
              'Avaiable on JHE 245/ 246/ 246A\nManufacturer: MetLab \nPart# 25-01-2\nTemperature up to 200º C\nPressure up to 350 Bars (5,000 psi)\nMould Sizes 1”, 1¼”, 1½”, 2”, 25mm, 30mm, 40mm, 50mm\nHeating Power 1500 watts Size 17” x 22½” x 20”\nWeight 244 lbs\nMain 220V, 1- phase 60/Hz',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true',
          pageTo: PcutterMain(),
          materialColor: cutter))
      ..add(HeroType(
          title: 'Mounting Press ECOPRESS 200',
          subTitle: purpoMountg,
          fText:
              'Avaiable on JHE 245\nManufacturer: MetLab\Mould Size: Ø 25-50mm \nMax Pressure: 300 bar \nMax temperature: 200°C \nOperation time: Up to 59:99 \nHeating Power: 1250W \nWater Cooling: Yes\n Operation: Programmable / Hydraulic \nDisplay: 5.7” HMI touch screen LCD \nSize: 360mm x 560mm x 470mm \nWeight: 38Kg \nElectrical: 230V-1 phase-50Hz \nComes with 5 different hot mounting compounds (1Kg of each)',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/ecop.jpg?raw=true',
          pageTo: EcoPress(),
          materialColor: mountP))
      ..add(HeroType(
          title: 'Mounting Press (Struers)',
          subTitle: purpoMountg,
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/stru.jpg?raw=true',
          pageTo: StruesMain(),
          materialColor: mountP))
      ..add(HeroType(
          title: 'Mounting Press (METLAB)',
          subTitle: purpoMountg,
          fText:
              'Avaiable on JHE 129\nManufacturer: MetLab \nPart# 25-01-2\nTemperature up to 200º C\nPressure up to 350 Bars (5,000 psi)\nMould Sizes 1”, 1¼”, 1½”, 2”, 25mm, 30mm, 40mm, 50mm\nHeating Power 1500 watts Size 17” x 22½” x 20”\nWeight 244 lbs\nMain 220V, 1- phase 60/Hz',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/met.jpg?raw=true',
          pageTo: METPress(),
          materialColor: mountP))
      ..add(HeroType(
          title: 'Automatic Polisher',
          subTitle: purpPolishg,
          fText: 'Avaiable on JHE 245/ 246/ 246A',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/ap.jpg?raw=true',
          pageTo: AutoPolisherMain(),
          materialColor: polish))
      ..add(HeroType(
          title: 'Buehler Manual Polisher',
          subTitle: purpPolishg,
          fText: 'Avaiable on JHE 129',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bmaPolisher.jpg?raw=true',
          pageTo: BuehlerPolisherMain(),
          materialColor: polish))
      ..add(HeroType(
          title: 'Buehler Auto-Polisher',
          subTitle: purpPolishg,
          fText:
              'Avaiable on JHE 129,AutoMet™ 250 Grinder-Polisher\nManufacturer: Buehler\nMachine Power: 0.156HP (116W)\nSpeed: 30-60rpm in 10rpm increments\nCentral Specimen\nForce:5-60 lbs [20-260N]\nSingle Specimen Forc:1-10 lbs [5-45N] \nAir Supply Hose:0.25in [6mm] OD tube\nAir Supply Pressure:35psi [2.4bar]\nPower Usage:630W, 5.5/2.7A @ 115/230VAC\nWeight:70 lbs [32kg]\nCompliance: CE; EC applicable directives',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Buehler%20Auto%20Polisher.jpg?raw=true',
          pageTo: BuehlerAutoPolisherMain(),
          materialColor: Colors.lightBlueAccent))
      ..add(HeroType(
          title: 'Manual Polisher',
          subTitle: purpPolishg,
          fText: 'Avaiable on JHE 245',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mpolisher.jpg?raw=true',
          pageTo: manual_polisher(),
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
      ..add(HeroType(
          title: 'Charpy Impact Tester',
          subTitle: 'Used to measure the relative toughness of a material',
          fText: 'Avaiable on JHE 242',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/cit.jpg?raw=true',
          pageTo: charpy_test(),
          materialColor: Colors.grey))
      ..add(
          HeroType(title: 'Manual Grinder', subTitle: 'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.', fText: 'Avaiable on JHE 245', image: 'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true', pageTo: ManualGrinder(), materialColor: Colors.blueGrey[400]))
      ..add(HeroType(title: 'Etching', subTitle: 'The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin); to make it easier to handle the sample.', fText: 'Avaiable on JHE 245', image: 'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/eth.jpg?raw=true', pageTo: Etching(), materialColor: Colors.redAccent))
      ..add(HeroType(title: 'Microwave Digestor', subTitle: 'Inductive Coupled Plasma Optical Emission Spectrometer', pageTo: MicroDigest(), fText: 'Avaiable on: \nJHE Room 239 \n \nFeatures: \n•Varian Vista Pro. \n•CCD camera as a dectector with a very wide range of available wavelengths, agrating wavelength selector and powerful sofrware to capture and analyze the data. \n•The instrument is configured for liquid samples only', image: 'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Microwave%20Digestor%20.jpg?raw=true', materialColor: Colors.lightGreenAccent))
      ..add(HeroType(title: 'Manual Compression Press', subTitle: 'Inductive Coupled Plasma Optical Emission Spectrometer', pageTo: ManualCompPress(), fText: 'Avaiable on: \nJHE Room 239 \n \nFeatures: \n•Varian Vista Pro. \n•CCD camera as a dectector with a very wide range of available wavelengths, agrating wavelength selector and powerful sofrware to capture and analyze the data. \n•The instrument is configured for liquid samples only', image: 'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Manual%20Pressor.jpg?raw=true', materialColor: Colors.indigoAccent));
  }
}
