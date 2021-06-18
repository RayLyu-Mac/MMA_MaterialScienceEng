class testdetailData {
  String name;
  String jobTitle;
  double titleFontsize;
  double contentFontsize;
  List researchA;
  String extention;
  String officeLoc;
  String eamil;

  testdetailData(
      {this.name,
      this.jobTitle,
      this.officeLoc,
      this.researchA,
      this.extention,
      this.contentFontsize,
      this.eamil,
      this.titleFontsize});

  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
          name: "Dr. Hatem Zurob",
          jobTitle: "Professor, Chair",
          eamil: "zurobh@mcmaster.ca",
          officeLoc: "JHE 357/D",
          researchA: ["Manufacturing & Infrastructure"],
          extention: "+1 905.525.9140 x 23515"))
      ..add(testdetailData(
          name: "	Dr. Nabil Bassim",
          jobTitle:
              "Associate Professor,Scientific Director, Canadian Centre for Electron Microscopy (CCEM) ",
          eamil: "bassimn@mcmaster.ca",
          officeLoc: "JHE 258",
          researchA: ["Data Analytics & Computational Materials"],
          extention: "+1 905.525.9140 x 24102"))
      ..add(testdetailData(
          name: "	Dr. Gianluigi Botton",
          jobTitle: "Professor",
          eamil: "gbotton@mcmaster.ca",
          officeLoc: "CCEM",
          researchA: ["Smart Materials & Devices"],
          extention: "+1 905.525.9140 x 23515"))
      ..add(testdetailData(
          name: "Dr. Neslihan Dogan",
          jobTitle: "Associate Professor",
          eamil: "dogann@mcmaster.ca",
          officeLoc: "JHE 213B",
          researchA: [
            "Data Analytics & Computational Materials",
            "Manufacturing & Infrastructure"
          ],
          extention: "+1 905.525.9140 x 23270"))
      ..add(testdetailData(
          name: "Dr. Kathryn Grandfield",
          jobTitle: "Associate Professor",
          eamil: "kgrandfield@mcmaster.ca",
          officeLoc: "ABB C305",
          researchA: ["Biomaterials", "Smart Materials & Devices"],
          extention: "+1 905.525.9140 x 23515"))
      ..add(testdetailData(
          name: "Dr. Joey Kish",
          jobTitle: "Professor, Associate Chair - Graduate",
          eamil: "kishjr@mcmaster.ca",
          officeLoc: "JHE 343/B",
          researchA: ["Manufacturing & Infrastructure"],
          extention: "+1 905.525.9140 x 21492"))
      ..add(testdetailData(
          name: "Dr. Adrian Kitai",
          jobTitle: "Professor",
          eamil: "kitaia@mcmaster.ca",
          officeLoc: "JHE 343/B",
          researchA: ["Smart Materials & Devices"],
          extention: "+1 905.525.9140 x 24973"))
      ..add(testdetailData(
          name: "Dr. Maureen Joel Lagos",
          jobTitle: "Associate Professor",
          eamil: "mjlagos@mcmaster.ca",
          officeLoc: "ABB-429",
          researchA: ["Smart Materials & Devices"],
          extention: "+1 905.525.9140 x 24862"))
      ..add(testdetailData(
          name: "Dr. Dmitri V. Malakhov",
          jobTitle: "Professor",
          eamil: "malakhov@mcmaster.ca",
          officeLoc: "JHE 357/B",
          researchA: ["Manufacturing & Infrastructure"],
          extention: "+1 905.525.9140 x 24308"))
      ..add(testdetailData(
          name: "Dr. Adrian Kitai",
          jobTitle: "Professor",
          eamil: "kitaia@mcmaster.ca",
          officeLoc: "JHE 343/B",
          researchA: ["Smart Materials & Devices"],
          extention: "+1 905.525.9140 x 21492"))
      ..add(testdetailData(
          name: "Dr. Joseph McDermid",
          jobTitle:
              "Professor, Associate Chair - Undergraduate, Director, Steel Research Centre",
          eamil: "mcdermid@mcmaster.ca",
          officeLoc: "JHE 343/C",
          researchA: ["Manufacturing & Infrastructure"],
          extention: "+1 905.525.9140 x 289-674-0253 x59034"))
      ..add(testdetailData(
          name: "Dr. Andre Phillion",
          jobTitle: "Associate Professor, Director, Experiential Learning",
          eamil: "philliab@mcmaster.ca",
          officeLoc: "ETB 107",
          researchA: [
            "Data Analytics & Computational Materials",
            "Manufacturing & Infrastructure"
          ],
          extention: "+1 905.525.9140 x 24046"))
      ..add(testdetailData(
          name: "Dr. Oleg Rubel",
          jobTitle: "Assistant Professor",
          eamil: "rubelo@mcmaster.ca",
          officeLoc: "JHE 359",
          researchA: ["Data Analytics & Computational Materials"],
          extention: "+1 905.525.9140 x 21492"))
      ..add(testdetailData(
          name: "Dr. Kyla Sask",
          jobTitle:
              "Assistant Professor, Associate Member, Department of Pathology & Molecular Medicine",
          eamil: "ksask@mcmaster.ca",
          officeLoc: "ABB-C309",
          researchA: ["Smart Materials & Devices", "Biomaterials"],
          extention: "+1 905.525.9140 x 24463"))
      ..add(testdetailData(
          name: "Dr. Leili Tafaghodi",
          jobTitle: "Associate Professor",
          eamil: "tafaghodi@mcmaster.ca",
          officeLoc: "JHE-213C",
          researchA: ["Manufacturing & Infrastructure"],
          extention: "+1 905.525.9140 x TBA"))
      ..add(testdetailData(
          name: "Dr. Gu Xu",
          jobTitle: "Professor",
          eamil: "guxu@mcmaster.ca",
          officeLoc: "JHE 357/A",
          researchA: ["Manufacturing & Infrastructure"],
          extention: "+1 905.525.9140 x 27341"))
      ..add(testdetailData(
          name: "Dr. Bosco Yu",
          jobTitle: "Assistant Professor (CLA)",
          eamil: "bosco.yu@mcmaster.ca",
          officeLoc: "ETB-403",
          researchA: [
            "Manufacturing & Infrastructure",
            "Smart Materials & Devices"
          ],
          extention: "+1 905.525.9140 x TBA"))
      ..add(testdetailData(
          name: "Dr. Leili Tafaghodi",
          jobTitle: "Associate Professor",
          eamil: "tafaghodi@mcmaster.ca",
          officeLoc: "JHE-213C",
          researchA: ["Manufacturing & Infrastructure"],
          extention: "+1 905.525.9140 x 24397"))
      ..add(testdetailData(
          name: "Dr. Igor Zhitomirsky",
          jobTitle: "Distinguished Engineering Professor",
          eamil: "zhitom@mcmaster.ca",
          officeLoc: "JHE A418",
          researchA: [
            "Manufacturing & Infrastructure",
            "Smart Materials & Devices",
            "Biomaterials"
          ],
          extention: "+1 905.525.9140 x 23914"));
  }

  Map<String, String> areaPic = {
    "Manufacturing & Infrastructure":
        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/contact/area/icon-mat-performance.png?raw=true",
    "Biomaterials":
        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/contact/area/icon-mat-bio.png?raw=true",
    "Smart Materials & Devices":
        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/contact/area/icon-mat-function.png?raw=true",
    "Data Analytics & Computational Materials":
        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/contact/area/icon-area-default.png?raw=true"
  };
}
