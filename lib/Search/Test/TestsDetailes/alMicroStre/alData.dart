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
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/bg.jpg?raw=true";
  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
        title: " Declaration",
        content:
            "In this section you are going to learn about the UTM used in measuring the resistance to creep of the aluminum and 6061 alloy. \n \nThe content of this sections comes from Matls 3M03: Mechanical Behavior of Material Demo 4\n \nReference:\nRubel, O. Material 3M03, Lab 4: CREEP AND HIGH TEMPERATURE DEFORMATION, McMaster University.",
        backImg: bImg,
      ))
      ..add(testdetailData(
          title: "Background",
          content:
              "The process of forming a participate phase from a supersaturated solution is called aging. The precipitated phase acts as an obstacle to the motion of dislocations through the aluminum matrix by two different paths. \nThe one is rapidly cooling the alloy by aging at low temperature to produce a fine, closely spaced particles that being tested in the T6 condition, the other alloy is slowly cooling and held at 530 deg for 4 hours, then quenched, aged at 160 deg for 18 hours, which produce large particles. ",
          backImg: bImg,
          top: 1.9,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/Intro.jpg?raw=true"))
      ..add(testdetailData(
          title: "Purpose",
          top: 1.9,
          height: 3.2,
          content:
              "This experiment aims to invest the microstructure effect on the strength of the 6061-Aluminum Alloy, which has high strength, low density and readily formable properties. To create a super-saturated solid solution as the Copper being rejected from the Aluminum matrix, the aluminum with 4% copper would quench from the single-phase region to form a two-phase region.  A T6 sample and a furnace cooled sample will be studied.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/defForCreep.png?raw=true"))
      ..add(testdetailData(
          title: "Purpose",
          content:
              "Purpose of this lab is to examine two different materials in creep resistance. One is pure aluminum, and the other is 6061 aluminum alloy. The 6061 alloy usually contains silicon, iron, magnesium, and chromium as the impurities. Those impurities can help to stabilize the microstructure during the experiment which expected to have a higher creep resistance compared to the pure aluminum. \nHence in this lab we are going to perform the creep test on both samples to proof this statement. ",
          backImg: bImg,
          top: 1.82,
          height: 3.8,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/alloy.jpg?raw=true"))
      ..add(testdetailData(
          title: "Creep Condition",
          top: 1.8,
          height: 3.1,
          content:
              "Deformation mechanism maps like the one shown in Fig. 1 below can be used to summarize the set of conditions under which a given creep mechanism is expected to dominate. As discussed in class, diffusional flow or diffusional creep would be expected to lead to a creep exponent of n = 1. Dislocation creep leads to theoretical exponents of n = 5 in the case of core diffusion control and n = 3 in the case of bulk-diffusion control. In practice, however, the observed dislocation creep exponents are much larger, in the range of n = 3 − 12.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/creepConditions.jpg?raw=true"))
      ..add(testdetailData(
          title: "Stress Relaxation",
          top: 1.9,
          height: 3.2,
          content:
              "Another manifestation of creep is the process of stress relaxation. In this case, the total applied strain is held constant for an extended period of time and the stress needed to maintain this strain is recorded. The stress will decay as the material deforms gradually with time and elastic strains (which give rise to the recorded stress) are gradually replaced with permanent plastic deformation. The derivation is straightforward; the total strain is the sum of the elastic and plastic parts.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/stressRelx.jpg?raw=true"))
      ..add(testdetailData(
          title: "Experiment Setting:",
          top: 1.9,
          height: 3.2,
          content:
              "In this demonstration we will examine the stress relaxation behaviour of pure aluminum (99.95%) and alloy 6061. The tests will be carried out at room temperature (298 K) which corresponds to a homologous temperature of T/Tm = 0.32. This corresponds to the lower limit of the temperatures for which we expect to see creep or time dependent deformation.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/expSet.jpg?raw=true"))
      ..add(testdetailData(
          title: "Procedure",
          top: 1.7,
          content:
              "1.Tensile tests will be performed on both 6061 samples\n2.An extensometer is used to improve strain data accuracy\n3.The sample dimensions also need to be recorded\n4.The dimensions also need to be recorded after fracture\n4.Post-fracture length are around 35-40cm",
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
          content:
              "In conclusion, the T6 heat treatment had improved mechanical properties compared to the anneal alloy with larger tensile stress and ultimate tensile stress. \nThe difference of stress and strain curves for the two heat treatments indicated the influence of microstructure of alloy since the precipitation reaction and aging process performed during the T6 heat treatment. ",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/conclu.jpg?raw=true"));
  }
}
