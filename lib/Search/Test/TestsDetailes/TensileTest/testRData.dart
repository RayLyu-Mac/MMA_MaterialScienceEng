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

  testdetailData({this.title, this.content, this.backImg, this.addOnImg});
  String bImg =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/IronS.jpg?raw=true";
  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          title: "General Stress Strain Curve",
          content: "General Result for Tensile Test",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/IMG_0772(20210527-135948).PNG?raw=true"))
      ..add(testdetailData(
          title: "Yield Strength",
          content:
              "Definition: \nThe yield strength is defined as the stress at which a predetermined amount of permanent deformation occurs. The graphical portion of the early stages of a tension test is used to evaluate yield strength.\n \nCalculation Method: \nMake a 0.2% offset parallel line to the linear part of the curve, the intersection of two lines will be the yield strength of the sample",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/yield.PNG?raw=true"))
      ..add(testdetailData(
          title: "Youngs Modulus",
          content:
              "Definition: Young's modulus or the modulus of the elasticity in tension, is a mechanical property that measures the tensile stiffness of a solid material. It quantifies the relastionship between tensile stress and axial strain in the linear elastic region of a material. \n \nCalculation Method: \nThe slope of the linear region for the stress strain curve",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/Young.PNG?raw=true"))
      ..add(testdetailData(
          title: "Ultimate Tensile Strength",
          content:
              "Definition: \nThe maximum strss that a material can withstand while being stretched or pulled before breaking \n \nCalculation Method: \nThe peak point of the whole curve",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/UTM.PNG?raw=true"))
      ..add(testdetailData(
          title: "Strain Energy",
          content:
              "Definition: \nTotal mechanical energy per unit volume consumed by the material in straining it to that value \n \nCalculation Method: \nThe area under the stress strain curve",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/ElasticE.PNG?raw=true"));
  }
}
