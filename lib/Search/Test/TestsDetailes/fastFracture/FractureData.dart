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
          title: "Purpose",
          top: 1.62,
          content:
              "The propose of this case study is to understand the conditions under which flaws already present in a component will grow by observing how does the fracture toughness change depending on the microstructure of the material by subjecting samples to different heat treatments. ",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/graft.jpg?raw=true"))
      ..add(testdetailData(
          title: "Model Introduction",
          top: 1.72,
          content:
              "The test method that we will use to measure the fracture toughness is referred to as the 3-point bending test of a single-edge-notch specimen. The test consists of bending a series of pre-cracked specimens to fracture. The specimen rests on two roller supports and is subject to a concentrated force P at its centre. The force is applied gradually until the crack growth becomes unstable. An extensometer is used to monitor the crack-mouth opening. The ratio Pmax/PQ should not exceed 1.1 for the test to be valid.  The basic background for this test is described above. Additional details appear in the ASTM E399-12e3 standard.\nAlso the measure the hardness of the sample on Rockwell C-scale and estimate the tensile strength by using Rockwell conversion chart.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/goal.jpg?raw=true"))
      ..add(testdetailData(
          title: "Material Property Involved",
          top: 1.62,
          content:
              "When using a 3-point bend test, we are mainly focus on the relationship between the load and stain, then we can process the data on the Excel and find the 95% (Pq) of the maximum load and fracture toughness. So that we can compare the different between samples. The 95% method will be used in the process.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/graft.jpg?raw=true"))
      ..add(testdetailData(
          title: "Procedure",
          content:
              "1. Measure the dimensions of the sample, thickness B, width W, the crack size,and the fixture.\n2. Mount the sample and set the extensometer. Add a 1kN pre-load on the sample to extent the sample, then zero out loading and strain.\n3. Start the 3-point bending test, add the loading until the sample fracture and record the strain and loading. Also plot the P vs crack-mouth opening displacement.\n4. Determine the critical force and calculate the K1c in Excel.\n5. Measure hardness of sample on the Rockwell C-scale. Using the hardness toestimate the tensile strength by using Rockwell conversion chart.\n6. Using equation 𝐾𝑐 = 𝑌𝜎𝑓√𝜋𝑎 to calculate the tolerable crack size.",
          backImg: bImg,
          pageTo: tensile_test(),
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mts.jpg?raw=true"))
      ..add(testdetailData(
          title: "Data Collected and Processing ",
          content:
              "1.	calculate the displacement and convert the load and displacement to the proper unit, then plot the load vs displacement graph.\n2.Find the elastic part of the graph and use the linear regression function in the Excel to find the function.\n3.Use the 95% method which is 95% of slope and intercept. then find the 95% function and plot it on the same graph.\n4.Find the interception of 95%line and load vs displacement line, the interception will be the Pq.\n5.Calculate the fracture toughness by formula. \n6.Make sure the ratio Pmax/PQ do not exceed 1.1.\n7.Using Rockwell conversion chart to find the tensile strength and calculate the maximum tolerable crack size.",
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
