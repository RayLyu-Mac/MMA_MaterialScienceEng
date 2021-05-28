import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';

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
          title: "Raw Data: Load versus Deflection",
          content:
              "Directly from tensile test machine we can get the data for load versus deflection, this is the data which directly reflect the changes in this experiment.\n \nClick the picture to see the actual process!",
          backImg: bImg,
          pageTo: tensile_test(),
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/load.png?raw=true"))
      ..add(testdetailData(
          title: "Processed Data: Stress Versus Strain",
          content:
              "We need to further processed data to stress versus strain so we can use that to investigate the material property.\n \nFor load to stress: 3PL/2d^2b (Need formula) (MPa=1N/mm^2)\n For Strain: Deflection/Length (mm/mm)",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/stress.png?raw=true"));
  }
}
