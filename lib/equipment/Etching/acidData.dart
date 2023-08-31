import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/polisher/Bupolisher/BuPolisherMain.dart';

class testdetailData {
  String title;
  String content;
  String backImg;
  String addOnImg;
  Widget? pageTo;

  testdetailData(
      {required this.title,
      required this.content,
      required this.backImg,
      required this.addOnImg,
      this.pageTo});
}

String bImg =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/IronS.jpg?raw=true";
List<testdetailData> acidData = [
  (testdetailData(
      title: "Hydrofluoric Acid",
      content:
          "Concentrated HF is extremely dangerous and differs from other acids because the fluoride ion readily penetrates the skin, causing destruction of deep tissue layers, including bone. Pain associated with exposure to solutions of HF (1-50%) may be delayed for 1-24 hours. If HF is not rapidly neutralized and the fluoride ion bound, tissue destruction may continue for days and result in limb loss or death. HF is similar to other acids in that the initial extent of a burn depends on the concentration, the temperature, and the duration of contact with the acid.  You MUST have taken the EOHSS HF training course before using HF.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/HF.png?raw=true")),
  (testdetailData(
      title: "Hydrochloric Acid",
      content:
          "It is classified as strongly acidic and can attack the skin over a wide composition range, since the hydrogen chloride completely dissociates in an aqueous solution.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/HCl.jpg?raw=true")),
  (testdetailData(
      title: "Nitric Acid",
      content:
          "Nitric acid (HNO₃) is a colorless liquid with yellow or red fumes with an acrid odor. Exposure to nitric acid can cause irritation to the eyes, skin, and mucous membrane; it can also cause delayed pulmonary edema, pneumonitis, bronchitis, and dental erosion. Nitric acid is highly corrosive. Workers may be harmed from exposure to nitric acid. The level of exposure depends upon the dose, duration, and work being done.",
      backImg: bImg,
      pageTo: BuehlerPolisherMain(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/HNO.png?raw=true")),
  (testdetailData(
      title: "Sulphuric Acid",
      content:
          "Causes severe skin burns and serious eye damage. \nMay cause respiratory irritation. \nMay cause damage to teeth through prolonged and repeated\nexposure to sulphuric acid mists.\nFatal if inhaled. \nMay be corrosive to metals.\nHarmful to aquatic life.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/HSO.jpg?raw=true")),
];
