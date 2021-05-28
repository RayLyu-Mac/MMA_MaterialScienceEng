import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/MountPress/EcoPress/EcoMain.dart';
import 'package:mma_mse/equipment/ManualGrinder/MgrinderMain.dart';
import 'package:mma_mse/equipment/polisher/Bupolisher/BuPolisherMain.dart';
import 'package:mma_mse/equipment/Microscope/Nikon/NikonMicroMain.dart';

class testdetailData {
  String title;
  String content;
  String backImg;
  String addOnImg;
  Widget pageTo;

  testdetailData(
      {this.title, this.content, this.backImg, this.addOnImg, this.pageTo});
  String bImg =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/caracc.jpg?raw=true";
  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          title: "Background",
          content:
              "In a car accident, the driver got hurt on his vertebera. In this experiment we are going to simulate the situation by performing a three-point test on the sample which has a very similar structure with our vertebera. By doing this we can investigate why the human veterbra has this structure and see the benefit of it",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/tensileBg.jpg?raw=true"))
      ..add(testdetailData(
          title: "Experiment Models",
          content:
              "The experiment model we are going to use. The sample are fixed on both end and the tensile machine will apply a force downward to the sample",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/models.jpg?raw=true"))
      ..add(testdetailData(
          title: "Bone Structure and Test Sample Structure",
          content:
              "The human vertebra consistes of a hard cover: Corticol part which is highly calcification make it high density and hard; and soft part: Cancellous which has hollow structure make it soft and easy to break. \n \nThe sample we are going to test:As shown on the picture, its a sandwhich structure consisting of two strong face sheet and one middle light weight core material.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/sandw.jpg?raw=true"))
      ..add(testdetailData(
          title: "Step4: Etching",
          content:
              "Etching was performed after the polish. 1.5% of Nital Solution (which is the nitrate acid as solute and alcohol as the solution[9]) was used, and we clipped the specimen and immersed the specimen’s surface we want on into the solution for 20s, with shaking of the beaker to make sure all the surface got etched.",
          backImg: bImg,
          pageTo: ManualGrinder(),
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true"))
      ..add(testdetailData(
          title: "Step5: Microscope Observation",
          content:
              "The images of the microstructures were analyzed using Image J, an image processing software suite developed at the National Institutes of Health and the Laboratory for Optical and Computational Instrumentation.",
          backImg: bImg,
          pageTo: NikonMicro(),
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/niko.jpg?raw=true"));
  }
}
