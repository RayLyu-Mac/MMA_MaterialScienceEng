class testdetailData {
  String title;
  String content;
  String backImg;
  String addOnImg;

  testdetailData({this.title, this.content, this.backImg, this.addOnImg});
  String bImg =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/bg.jpg?raw=true";
  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          title: "Definitation of hardness",
          content:
              "Hardness is defined as the resistance of metal to plastic deformation, ususally by indentation",
          backImg: bImg,
          addOnImg: null))
      ..add(testdetailData(
          title: "Types of hardness test",
          content:
              "Mainly divided into micro and macro \nMicro: \nVickers: 10grams up to 1kg \nKnoop: 10grams up to 1kg \n \nMacro: \nVickers: 1kg - 150kg\nRockwell: Superficial(15N,30N,45N or A,B,C Scale)\nBrinell: 3000kg",
          backImg: bImg,
          addOnImg: null))
      ..add(testdetailData(
          title: "Application Range",
          content:
              "•Can be applied to thick to thin coatings and on bulk from hard to sofr material\n•By using series of formula, hardness and ealstic modulus are calculated in a fast measurement",
          backImg: bImg,
          addOnImg: null))
      ..add(testdetailData(
          title: "Force Displacement Curve",
          content:
              "•Applied force and indentation depth are measured dynamically during a load-unload cycle\n•Hardness and ealstic modulus are calculated directly from the resultant force-displacement curve",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/fdc.PNG?raw=true"))
      ..add(testdetailData(
          title: "Test on a surface with thin film",
          content:
              "On a surface covered by thin layers/coatings, the maximum depth of the indentation must be lower than 10% of total depth of the voering to avoid influence of the substrate",
          backImg: bImg,
          addOnImg: null))
      ..add(testdetailData(
          title: "Calibration test sample",
          content: "Calibration sample used for the test",
          backImg: bImg,
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/rwc.jpg?raw=true"));
  }
}

Map<String, String> document = {
  "1": "A",
  "2":
      "Mainly divided into micro and macro \nMicro: \nVickers: 10grams up to 1kg \nKnoop: 10grams up to 1kg \n \nMacro: \nVickers: 1kg - 150kg\nRockwell: Superficial(15N,30N,45N or A,B,C Scale)\nBrinell: 3000kg",
  "3":
      "•Can be applied to thick to thin coatings and on bulk from hard to sofr material\n•By using series of formula, hardness and ealstic modulus are calculated in a fast measurement",
  "4":
      "•Applied force and indentation depth are measured dynamically during a load-unload cycle\n•Hardness and ealstic modulus are calculated directly from the resultant force-displacement curve",
  "5":
      "On a surface covered by thin layers/coatings, the maximum depth of the indentation must be lower than 10% of total depth of the voering to avoid influence of the substrate"
};
