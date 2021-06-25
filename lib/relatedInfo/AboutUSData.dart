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
  testdetailData(
      {this.name,
      this.jTitle,
      this.about,
      this.img,
      this.program,
      this.contribution,
      this.contentFontsize,
      this.eamil,
      this.titleFontsize});

  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          name: "Ray Lyu",
          jTitle: "Team Leader",
          eamil: "emmm",
          program: "Material & Biomedical Engineering",
          img:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/zl.jpg?raw=true",
          contribution:
              "•Design the structure for the App\n•Create useful tools and features\n•Cut the instruction video and post\n•Safety Features\n•Test case\n•Side drawer design",
          about:
              "A guitar player, A data analysis, A toy designer, A material Scientist"));
  }
}
