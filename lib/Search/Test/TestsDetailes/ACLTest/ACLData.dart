import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';

class testdetailData {
  String title;
  String content;
  String backImg;
  String addOnImg;
  Widget pageTo;
  double height;
  double left;
  double top;
  double width;

  testdetailData(
      {this.title,
      this.content,
      this.backImg,
      this.left,
      this.addOnImg,
      this.width,
      this.top,
      this.pageTo,
      this.height});
  String bImg =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/bg.png?raw=true";
  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
        title: " Declaration",
        content:
            "In this section you are going to learn about the UTM used in measuring the elastic modulus of the sample. \n \nThe content of this sections comes from Matls 3M03: Mechanical Behavior of Material Demo 2b\n \nReference:\nRubel, O. Material 3M03, DEMONSTRATION 2B: MEASUREMENT OF AN ANTERIOR CRUCIATE LIGAMENT STRENGTH, McMaster University",
        backImg: bImg,
      ))
      ..add(testdetailData(
          title: "Background I (Introduction to ACL)",
          top: 1.66,
          height: 3.4,
          content:
              "The ACL is a ligament found in the knee that acts to stabilize the knee joint throughout daily movements. The knee joint is required to withstand large forces, ranging from 3x bodyweight during walking up to 7x bodyweight during movements such as knee extension and jumping. \nHowever the ACL is only able to withstand a certain amount of force before breaking. When loads are greater than the range, it may be plastically deformed or even tear. This is not uncommon in some sports player like soccer or tennis player.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/intro.jpg?raw=true"))
      ..add(testdetailData(
          title: "Background II (ACL graft)",
          top: 1.62,
          content:
              "Ligaments are unable to repair damage incurred and therefore clinical intervention is necessary to regain normal knee function. Current clinical treatments for ACL sprains or tears often involve replacement surgery, where a material (termed a ‘graft’) is secured to the femur (thigh bone) and tibia (shin bone) acting as a new ligament and allowing for a recovery of knee range of motion and stability. \n The graft material used for the surgery must possess certain properties that do not induce an adverse reaction in the surrounding tissues and must mimic the biomechanical abilities of the original ACL.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/graft.jpg?raw=true"))
      ..add(testdetailData(
          title: "Introduction",
          content:
              "A synthetic graft refers to the use of a material not found in the body as the replacement. One such graft materials is the Gore-Tex graft, a braided, flexible polytetrafluorethylene (PTFE) polymer [4]. PTFE is a synthetic polymer that has been shown to be biocompatible, meaning it can be placed within the body without harming an individual. \nThus, in this experiment we are going to use the PTFE to test the feasibility of as the synthetic graft. ",
          backImg: bImg,
          top: 1.85,
          addOnImg:
              "https://raw.githubusercontent.com/RayLyu-Mac/MMA_MaterialScienceEng/main/assest/test/ACL/PTFE.webp"))
      ..add(testdetailData(
          title: "Goal",
          top: 1.72,
          content:
              "In this laboratory, the PTFE material will be analyzed to determine its elastic modulus, yield strength, and ultimate tensile strength. You will be required to state the feasibility of this material as an ACL in terms of biomechanics. \nThe acceptable range for the ultimate tensile strength of a synthetic graft is 15-50 Mpa. The elastic modulus for the graft should be higher than 300 Mpa.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/goal.jpg?raw=true"))
      ..add(testdetailData(
          title: "Procedure",
          content:
              "1.	Record the dimensions of the representative graft material (Fig. 3): length l, diameter d, gauge length of the extensometer L0 (not shown on the figure). \n2. Pull the specimen until it tears while recording the load, F, and displacement, ∆L (or strain ∆L/L0). \n3. Plot the stress vs. strain curve and determine the elastic modulus, yield strength, and ultimate tensile strength of the graft material. The yield strength can be determined by 0.2% offset criteria. \n4. Observe the fracture surface and record the diameter of the specimen close to the fracture. Comment on whether significant necking has occurred.",
          backImg: bImg,
          pageTo: tensile_test(),
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mts.jpg?raw=true"))
      ..add(testdetailData(
          title: "Data Collected and Processing ",
          content:
              "The data collected in this experiment are extension and load. To get the elastic modulus of the sample we need to transfer the load to stress and extension to strain. \nThe attached plots shows the result after the processing. To get the elastic modulus of the sample, we need to draw a parallel line to the linear region of the stress strain curve and find the intersection between the line and the curve. Finally, for the ultimate tensile strength is the peak of the whole curve. \n \nYou can find the detail sample on the last page. ",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/data.jpg?raw=true"))
      ..add(testdetailData(
          title: "Conclusion",
          height: 8,
          top: 2,
          content:
              "The sample we tested has lower UTM (9.33% lower) and higher elastic modulus(16.26% higher) than expected. Thus, the PTFE still need to be enhanced to reach the requirement for replacement of ACL. The cross section before and after the fracture is quite similar which demonstrates that the necking process is not significant for this material.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/conclu.jpg?raw=true"));
  }
}
