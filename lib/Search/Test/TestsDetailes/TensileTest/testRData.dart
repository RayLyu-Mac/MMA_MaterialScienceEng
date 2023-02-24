class testdetailData {
  String title;
  String content;

  String addOnImg;

  testdetailData(
      {required this.title, required this.content, required this.addOnImg});
}

List<testdetailData> testResult = [
  (testdetailData(
      title: "Typical Result",
      content: "General Result for Tensile Test",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/IMG_0772(20210527-135948).PNG?raw=true")),
  (testdetailData(
      title: "Yield Strength",
      content:
          "Definition: \nThe yield strength is defined as the stress at which a predetermined amount of permanent deformation occurs. The graphical portion of the early stages of a tension test is used to evaluate yield strength.\n \nCalculation Method: \nMake a 0.2% offset parallel line to the linear part of the curve, the intersection of two lines will be the yield strength of the sample",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/yield.PNG?raw=true")),
  (testdetailData(
      title: "Youngs Modulus",
      content:
          "Definition: Young's modulus or the modulus of the elasticity in tension, is a mechanical property that measures the tensile stiffness of a solid material. It quantifies the relastionship between tensile stress and axial strain in the linear elastic region of a material. \n \nCalculation Method: \nThe slope of the linear region for the stress strain curve",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/Young.PNG?raw=true")),
  (testdetailData(
      title: "Ultimate Tensile Strength",
      content:
          "Definition: \nThe maximum strss that a material can withstand while being stretched or pulled before breaking \n \nCalculation Method: \nThe peak point of the whole curve",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/UTM.PNG?raw=true")),
  (testdetailData(
      title: "Strain Energy",
      content:
          "Definition: \nTotal mechanical energy per unit volume consumed by the material in straining it to that value \n \nCalculation Method: \nThe area under the stress strain curve",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/IMG_0774(20210527-200435).PNG?raw=true")),
  (testdetailData(
      title: "Stress Calculation",
      content:
          "P: Load\nL: Span of the support\nb: Width of the sample\nd:Height of the sample",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/formula.jpg?raw=true")),
  (testdetailData(
      title: "Flexural Strain Calculation",
      content:
          "P: Load\nL: Span of the support\nd:Height of the sample\nD: Deflection of the sample",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/flexureStrain.jpg?raw=true"))
];
