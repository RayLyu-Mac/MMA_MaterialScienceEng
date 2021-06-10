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
  String addonImgLft;
  String addonImgRht;

  testdetailData(
      {this.title,
      this.content,
      this.backImg,
      this.left,
      this.addOnImg,
      this.width,
      this.top,
      this.pageTo,
      this.addonImgLft,
      this.addonImgRht,
      this.height});
  String bImg =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/caracc.jpg?raw=true";
  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          title: "Carbon-Steel",
          content:
              "Carbon-Steel Phase Diagram:\n \nα: Ferrite\nFe3C: Cementite\nGamma: Austenite\nL: Liquid Phase",
          backImg: bImg,
          addonImgLft:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/feCLeft.png?raw=true",
          addonImgRht:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/feCRight.png?raw=true",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/feC.png?raw=true"))
      ..add(testdetailData(
          title: "Aluminum-Copper",
          content: "Aluminum-Copper Phase Diagram",
          backImg: bImg,
          addonImgLft:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alcuLeft.jpg?raw=true",
          addonImgRht:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alcuRight.jpg?raw=true",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alcu.jpg?raw=true"))
      ..add(testdetailData(
          title: "Zinc-Copper",
          content: "Zinc-Copper Phase Diagram",
          backImg: bImg,
          addonImgLft:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuznLeft.png?raw=true",
          addonImgRht:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuznRight.png?raw=true",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuzn.png?raw=true"))
      ..add(testdetailData(
          title: "Aluminum-Silicon",
          content: "Aluminum-Silicon Phase Diagram",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alsi.jpg?raw=true"))
      ..add(testdetailData(
          title: "Zrconia-Yttrium oxide",
          content: "Zrconia-Yttrium oxide (ZrO2-Y2O3) Phase Diagram",
          backImg: bImg,
          addonImgLft:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuznLeft.png?raw=true",
          addonImgRht:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/ZrOyRight.png?raw=true",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/zroy.png?raw=true"));
  }
}
