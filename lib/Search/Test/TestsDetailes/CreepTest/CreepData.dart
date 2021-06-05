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
          title: "Background",
          content:
              "At room temperature, most metals and ceramics deform in a way which depends on stress but which, for practical purposes, is independent of time (the effect of strain rate is very weak). \nAs the temperature increases, loads which give no permanent deformation at room temperature can cause materials to creep. Creep is slow, continuous deformation with time. The strain, instead of depending only on the stress, now depends on temperature and time as well.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/intro.jpg?raw=true"))
      ..add(testdetailData(
          title: "Definition of Creep",
          content:
              "In materials science, creep (sometimes called cold flow) is the tendency of a solid material to move slowly or deform permanently under the influence of persistent mechanical stresses.\nCreep will cause material undergo a time dependent increase in length. This will be very dangerous in some specific situations like blade in high speed rotation, which may cause the damage to whole engine.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/graft.jpg?raw=true"))
      ..add(testdetailData(
          title: "Purpose",
          content:
              "Purpose of this lab is to examine two different materials in creep resistance. One is pure aluminum, and the other is 6061 aluminum alloy. The 6061 alloy usually contains silicon, iron, magnesium, and chromium as the impurities. Those impurities can help to stabilize the microstructure during the experiment which expected to have a higher creep resistance compared to the pure aluminum. \nHence in this lab we are going to perform the creep test on both samples to proof this statement. ",
          backImg: bImg,
          height: 1.7,
          top: 3,
          width: 1.9,
          left: 4,
          addOnImg:
              "https://raw.githubusercontent.com/RayLyu-Mac/MMA_MaterialScienceEng/main/assest/test/ACL/PTFE.webp"))
      ..add(testdetailData(
          title: "Creep Condition",
          content:
              "Deformation mechanism maps like the one shown in Fig. 1 below can be used to summarize the set of conditions under which a given creep mechanism is expected to dominate. As discussed in class, diffusional flow or diffusional creep would be expected to lead to a creep exponent of n = 1. Dislocation creep leads to theoretical exponents of n = 5 in the case of core diffusion control and n = 3 in the case of bulk-diffusion control. In practice, however, the observed dislocation creep exponents are much larger, in the range of n = 3 − 12.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/goal.jpg?raw=true"))
      ..add(testdetailData(
          title: "Stress Relaxation",
          content:
              "Another manifestation of creep is the process of stress relaxation. In this case, the total applied strain is held constant for an extended period of time and the stress needed to maintain this strain is recorded. The stress will decay as the material deforms gradually with time and elastic strains (which give rise to the recorded stress) are gradually replaced with permanent plastic deformation. The derivation is straightforward; the total strain is the sum of the elastic and plastic parts.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/goal.jpg?raw=true"))
      ..add(testdetailData(
          title: "Experiment Setting:",
          content:
              "In this demonstration we will examine the stress relaxation behaviour of pure aluminum (99.95%) and alloy 6061. The tests will be carried out at room temperature (298 K) which corresponds to a homologous temperature of T/Tm = 0.32. This corresponds to the lower limit of the temperatures for which we expect to see creep or time dependent deformation.",
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
          content:
              "The sample we tested has lower UTM (9.33% lower) and higher elastic modulus(16.26% higher) than expected. Thus, the PTFE still need to be enhanced to reach the requirement for replacement of ACL. The cross section before and after the fracture is quite similar which demonstrates that the necking process is not significant for this material.",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ACL/conclu.jpg?raw=true"));
  }
}
