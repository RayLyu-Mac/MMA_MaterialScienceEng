class testdetailData {
  String title;
  String content;
  String addOnImg;
  double titleFontsize;
  double contentFontsize;
  double picLeft;

  testdetailData(
      {this.title,
      this.content,
      this.addOnImg,
      this.contentFontsize,
      this.picLeft,
      this.titleFontsize});

  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          titleFontsize: 16,
          title: "Class A: Ordinary",
          content:
              "For ordinary combustible materials such as paper, wood, cardboard, and most plastics. The geometric symbol is the green triangle and the pictograph shows ordinary trash and wood on fire.",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/extinguisher/A.png?raw=true"))
      ..add(testdetailData(
          titleFontsize: 16,
          title: "Class B: Flammable Liquid",
          content:
              "For fires involving flammable or combustible liquids, like gasoline, kerosene, grease or oil. The geometric symbol is the red square and the pictograph shows a fuel can in flames.",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/extinguisher/B.png?raw=true"))
      ..add(testdetailData(
          titleFontsize: 16,
          title: "Class C: Electrical Equipment",
          content:
              "For fires involving electrical equipment, like appliances, wiring, circuit breakers or outlets. You should never use water to extinguish a class C fire. Water is a powerful conductor, so the risk of electrical shock is substantial.",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/extinguisher/C.jpg?raw=true"))
      ..add(testdetailData(
          titleFontsize: 16,
          title: "Class D: Fire in Chem Lab",
          content:
              "For fires most commonly occurring in a chemical laboratories. These involve combustible metals. A pictograph is not commonly used for this class but you might see one that shows a metal beam and flames.",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/extinguisher/D.png?raw=true"))
      ..add(testdetailData(
          titleFontsize: 15,
          title: "Class K: Fire involve oil or fat",
          content:
              "For fires that involve cooking oils, trans-fats, or fats in cooking appliances, typically occurring in restaurants or cafeteria kitchens. The geometric symbol is the black hexagon and the pictograph shows a frying pan in flames.",
          addOnImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/extinguisher/K.png?raw=true"));
  }
}
