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
            "In this section you are going to learn about the UTM used in measuring the maximum allowable crack length of the sample. \n \nThe content of this sections comes from Matls 3M03: Mechanical Behavior of Material Demo 2b\n \nReference:\nRubel, O. Material 3M03, Lab 3: Measuring the Toughness of a Medium Carbon Steel, McMaster University.",
        backImg: bImg,
      ))
      ..add(testdetailData(
          title: "Background",
          top: 1.66,
          height: 3.4,
          content:
              "In the elastic modulus test demonstrations, the tensile test has been introduced as a standard method of measuring the properties of engineering materials. However, the designs based on properties determined solely from tensile or torsion test may be inadequate. This is because real structures and components contain flaws which can not been avoided during the production. During the useful service life of the component, defects may grow in scale as a result of normal working stresses, even if these stresses are below the yield stress. This because of the stress concentration. ",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/crack/bg.png?raw=true"))
      ..add(testdetailData(
          title: "Purpose",
          top: 1.62,
          content:
              "The propose of this case study is to understand the conditions under which flaws already present in a component will grow by observing how does the fracture toughness change depending on the microstructure of the material by subjecting samples to different heat treatments.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/crack/purpose.png?raw=true"))
      ..add(testdetailData(
          title: "Case Introduction",
          top: 1.68,
          content:
              "Pressure vessels have high requirement in crack size. because of the stress concentration, the component which still in the useful service life, defects may grow in scale as a result of normal working stresses, even if these stresses are below the yield stress. However, during the production process defects are unavoidable, for example castings tend to contain pores as a result of gases entrained in the liquid metal during solidification. Welding often results in cracks as a result of the thermal stresses that develop during cooling. To understand the tolerable crack size can help engineer to improve the safety. ",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/crack/case.jpg?raw=true"))
      ..add(testdetailData(
        title: "Test Method",
        top: 1.62,
        content:
            "The test method that we will use to measure the fracture toughness is referred to as the 3-point bending test of a single-edge-notch specimen. The test consists of bending a series of pre-cracked specimens to fracture. The specimen rests on two roller supports and is subject to a concentrated force P at its centre. The force is applied gradually until the crack growth becomes unstable. An extensometer is used to monitor the crack-mouth opening. The ratio Pmax/PQ should not exceed 1.1 for the test to be valid.  The basic background for this test is described above. Additional details appear in the ASTM E399-12e3 standard.\nAlso, the measure the hardness of the sample on Rockwell C-scale and estimate the tensile strength by using Rockwell conversion chart.",
        backImg: bImg,
      ))
      ..add(testdetailData(
        title: "Material Involved",
        top: 1.72,
        content:
            "When using a 3-point bend test, we are mainly focus on the relationship between the load and stain, then we can process the data on the Excel and find the 95% (Pq) of the maximum load and fracture toughness. So that we can compare the different between samples. The 95% method will be used in the process.",
        backImg: bImg,
      ))
      ..add(testdetailData(
          title: "Procedure",
          content:
              "1. Measure the dimensions of the sample, thickness B, width W, the crack size,and the fixture.\n2. Mount the sample and set the extensometer. Add a 1kN pre-load on the sampleto extent the sample, then zero out loading and strain.3. Start the 3-point bending test, add the loading until the sample fracture andrecord the strain and loading. Also plot the P vs crack-mouth openingdisplacement.\n4. Determine the critical force and calculate the K1c in Excel.\n5. Measure hardness of sample on the Rockwell C-scale. Using the hardness toestimate the tensile strength by using Rockwell conversion chart.\n6. Using equation 𝐾𝑐 = 𝑌𝜎𝑓√𝜋𝑎 to calculate the tolerable crack size.",
          backImg: bImg,
          pageTo: tensile_test(),
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mts.jpg?raw=true"))
      ..add(testdetailData(
          title: "Data Collected and Processing ",
          content:
              "calculate the displacement and convert the load and displacement to the proper unit, then plot the load vs displacement graph.\nFind the elastic part of the graph and use the linear regression function in the Excel to find the function.\nUse the 95% method which is 95% of slope and intercept. then find the 95% function and plot it on the same graph.\nFind the interception of 95%line and load vs displacement line, the interception will be the Pq.\nCalculate the fracture toughness by formula. \nMake sure the ratio Pmax/PQ do not exceed 1.1.\nTest the hardness several times, then calculate the means of the data\nUsing Rockwell conversion chart to find the tensile strength and calculate the maximum tolerable crack size. ",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/crack/plot.png?raw=true"))
      ..add(testdetailData(
          title: "Conclusion",
          height: 8,
          top: 2,
          content:
              "The tamper heat treatment which causes the tamper martensite formed, the tamper sample has the highest fracture toughness, which is 32% and 78% higher than the quench and anneal sample. the anneal sample has the highest tolerable crack size which is 86% and 7% higher than quench sample and tamper sample. the quench and tamper process will increase the fracture toughness of material but reduce in tolerable crack size. the anneal process will increase the tolerable crack size of material but reduce in fracture toughness and tensile strength.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/crack/concl.emf?raw=true"));
  }
}
