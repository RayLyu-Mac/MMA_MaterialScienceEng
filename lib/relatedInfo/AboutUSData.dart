class testdetailData {
  String name;
  String jTitle;
  double? titleFontsize;
  double? contentFontsize;
  String contribution;
  String program;
  String? eamil;
  String? about;
  String? img;
  String? moto;
  testdetailData(
      {required this.name,
      required this.jTitle,
      this.about,
      this.img,
      required this.program,
      required this.contribution,
      this.contentFontsize,
      this.moto,
      this.eamil,
      this.titleFontsize});
}

List<testdetailData> aboutUsData = [
  (testdetailData(
      name: "Ray Lyu",
      jTitle: "Team Leader",
      eamil: "lyuz11@mcmaster.ca",
      program: "Material & Biomedical Engineering",
      img:
          "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/personal%20Pic/38.png?raw=true",
      contribution:
          "•Design the structure for the App\n•Create useful tools and features\n•Cut the instruction video and post\n•Safety Features\n•Test case\n•Side drawer design",
      about:
          "A guitar player, A data analysis, A toy designer, A material Scientist",
      moto: "既然选择了远方，便只顾风雨兼程")),
  (testdetailData(
    name: "Cassie zhou",
    jTitle: "UI Designer",
    eamil: "lyuz11@mcmaster.ca",
    program: "Material Engineering",
    contribution:
        "•Basic art design\n•Layout overview design\n•filter appearance\n•Floor plan design\n•Logo collection",
    about:
        "A 100% dog person! Like editing and photoshop. My self-made video have over 20k view",
  )),
  (testdetailData(
    name: "Gao zhimin",
    jTitle: "Design Assistant & Tester",
    program: "Material Engineering",
    contribution: "•Test\n•Content writer",
    about: "A guitar player，favorite sport：cycling",
  )),
  (testdetailData(
    name: "Dr. Hatem Zurob",
    jTitle: "Sponsor",
    program: "MSE Chair",
    contribution:
        "•Fund the project\n•Provide valuable suggestions and feedbacks",
  )),
];
