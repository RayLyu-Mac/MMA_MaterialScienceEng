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
}

String bImg =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/caracc.jpgraw=true";
List<testdetailData> phaseData = [
  (testdetailData(
      title: "Carbon-Steel",
      content:
          "Carbon-Steel Phase Diagram:\n \nα: Ferrite\nFe3C: Cementite\nGamma: Austenite\nL: Liquid Phase",
      backImg: bImg,
      addonImgLft:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/feCLeft.pngraw=true",
      addonImgRht:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/feCRight.pngraw=true",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/feC.pngraw=true")),
  (testdetailData(
      title: "Aluminum-Copper",
      content: "Aluminum-Copper Phase Diagram",
      backImg: bImg,
      addonImgLft:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alcuLeft.jpgraw=true",
      addonImgRht:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alcuRight.jpgraw=true",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alcu.jpgraw=true")),
  (testdetailData(
      title: "Zinc-Copper",
      content: "Zinc-Copper Phase Diagram",
      backImg: bImg,
      addonImgLft:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuznLeft.pngraw=true",
      addonImgRht:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuznRight.pngraw=true",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuzn.pngraw=true")),
  (testdetailData(
      title: "Aluminum-Silicon",
      content: "Aluminum-Silicon Phase Diagram",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/alsi.jpgraw=true")),
  (testdetailData(
      title: "Zrconia-Yttrium oxide",
      content: "Zrconia-Yttrium oxide (ZrO2-Y2O3) Phase Diagram",
      backImg: bImg,
      addonImgLft:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/cuznLeft.pngraw=true",
      addonImgRht:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/ZrOyRight.pngraw=true",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/zroy.pngraw=true"))
];
