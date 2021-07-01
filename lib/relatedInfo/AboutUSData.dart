class testdetailData {
  String name;
  String jTitle;
  double titleFontsize;
  double contentFontsize;
  String contribution;
  String program;
  String eamil;
  String about;
  String img;
  String moto;
  testdetailData(
      {this.name,
      this.jTitle,
      this.about,
      this.img,
      this.program,
      this.contribution,
      this.contentFontsize,
      this.moto,
      this.eamil,
      this.titleFontsize});

  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          name: "Ray Lyu",
          jTitle: "Team Leader",
          eamil: "lyuz11@mcmaster.ca",
          program: "Material & Biomedical Engineering",
          img:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/zl.jpg?raw=true",
          contribution:
              "•Design the structure for the App\n•Create useful tools and features\n•Cut the instruction video and post\n•Safety Features\n•Test case\n•Side drawer design",
          about:
              "A guitar player, A data analysis, A toy designer, A material Scientist",
          moto: "既然选择了远方，便只顾风雨兼程"))
      ..add(testdetailData(
        name: "Cassie zhou",
        jTitle: "UI Designer",
        eamil: "lyuz11@mcmaster.ca",
        program: "Material Engineering",
        contribution:
            "•Basic art design\n•Layout overview design\n•filter appearance\n•Floor plan design\n•Logo collection",
        about:
            "A 100% dog person! Like editing and photoshop. My self-made video have over 20k view",
      ))
      ..add(testdetailData(
        name: "Gao zhimin",
        jTitle: "Design Assistant & Tester",
        program: "Material Engineering",
        contribution: "•Test\n•Content writer",
        about: "A guitar player，favorite sport：cycling",
      ))
      ..add(testdetailData(
        name: "Dr. Hatem Zurob",
        jTitle: "Sponsor",
        program: "MSE Chair",
        contribution:
            "•Fund the project\n•Provide valuable suggestions and feedbacks",
      ))
      ..add(testdetailData(
        name: "Isabelle Ragany",
        jTitle: "Alpha Tester",
        contribution: "Provide valuable suggestions and feedbacks",
      ));
  }
}
