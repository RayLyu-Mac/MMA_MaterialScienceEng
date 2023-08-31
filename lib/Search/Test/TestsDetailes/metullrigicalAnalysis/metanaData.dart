import 'package:mma_mse/equipment/MountPress/EcoPress/EcoMain.dart';
import 'package:mma_mse/equipment/ManualGrinder/MgrinderMain.dart';
import 'package:mma_mse/equipment/polisher/Bupolisher/BuPolisherMain.dart';
import 'package:mma_mse/equipment/Microscope/Nikon/NikonMicroMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TestDetailFormat.dart';

String bImg =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/IronS.jpg?raw=true";
List<testdetailData> metullgy = [
  (testdetailData(
    title: "Purpose and background",
    content:
        "When a part fail, it may be hard to see the reason from the surface. As a material engineer we use metallurigcal analysis to find out the reason for failure. \n\nMetallurgical analysis usually contains mounting, grinding, polishing, etching and microscopic inspection, the details can be seen on next following pages. After those process we can view the microstructure of a failure sample under light microscope. By analysising the specific feature (like wave like structure usually indicating the sample fail due to fatigue) we can find the reason why sample fail and provide proper solution to prevent the failure. We also use this to inspect and speculate the material properties, like the grain size, grain distance and impurity can provide material engineer valuable information for the material properties.",
    backImg: bImg,
  )),
  (testdetailData(
      title: "Step1: Mount the sample",
      content:
          "First step is to mounting the sample using mounting press machine and a thermosetting resin to form a single polymeric-specimen compound. Followed with engrave the initial, sample’s name and date on the back of the compound. \n(Click Picture to see the instruction!)",
      backImg: bImg,
      pageTo: EcoPress(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/met.jpg?raw=true")),
  (testdetailData(
      title: "Step2: Grind sample",
      content:
          "Then the sample was grinded several times. Start with 240 silicon carbide (Sic) paper, the specimen’s edge was first being grinded to make it easier to be picked up. Then goes to a series of silicon carbide wheel with the counter clockwise or clockwise 90 turn based on the last direction and with appropriate downward force. The specimen checked for every 40 seconds to see how well it grinded and the operators would adjust the force they apply on.\n(Click Picture to see the instruction!)",
      backImg: bImg,
      pageTo: ManualGrinder(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true")),
  (testdetailData(
      title: "Step3: Polish the sample",
      content:
          "hen the specimen will be polished by 1 micron polishing wheel with which is better for removing the scratches and deformation on the surface of testing. The wheel speed is around 100 RPM. Lubricant was applied to the surface of specimen to decrease the friction between the paper and the specimen. \n(Click Picture to see the instruction!)",
      backImg: bImg,
      pageTo: BuehlerPolisherMain(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bmaPolisher.jpg?raw=true")),
  (testdetailData(
      title: "Step4: Etching",
      content:
          "Etching was performed after the polish. 1.5% of Nital Solution (which is the nitrate acid as solute and alcohol as the solution[9]) was used, and we clipped the specimen and immersed the specimen’s surface we want on into the solution for 20s, with shaking of the beaker to make sure all the surface got etched.\n(Click Picture to see the instruction!)",
      backImg: bImg,
      pageTo: ManualGrinder(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true")),
  (testdetailData(
      title: "Step5: Microscope Observation",
      content:
          "The images of the microstructures were analyzed using Image J, an image processing software suite developed at the National Institutes of Health and the Laboratory for Optical and Computational Instrumentation.\n(Click Picture to see the instruction!)",
      backImg: bImg,
      pageTo: NikonMicro(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/niko.jpg?raw=true"))
];
