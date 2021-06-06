class testdetailData {
  String chemName;
  String chemicalP;
  String toxic;
  String prep;
  String ppe;
  String backImg;
  List<String> whims;

  testdetailData(
      {this.backImg,
      this.chemicalP,
      this.ppe,
      this.prep,
      this.whims,
      this.chemName,
      this.toxic});
  String wtoxi =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/death.jpg?raw=true";
  String wcorro =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/corrosive.jpg?raw=true";
  String wexplo =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/explode.jpg?raw=true";
  String prepara =
      "1.Read MSDS for HF\n2.Preview the SOPs\n3. Make sure the you can locate the position for first aid kit and chemical spill kit\nMake sure perform inside the fumehood";
  String bImg =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/IronS.jpg?raw=true";
  List<testdetailData> detailL() {
    List detail = List<testdetailData>();
    return detail
      ..add(testdetailData(
        chemName: "Hydrofluoric Acid HF",
        chemicalP:
            "It can react with glazes, enamels, pottery, concrete, rubber,leather, many metals (especially cast iron) and many organic compounds. It can etches glass and it may explode when meet hydrogen gas. ",
        toxic:
            "It can cause destruction of deep tissue layers, concentrated acid will case sever skin burn. \nContact with eye will cause cornea destruction and blindess. \nInhalation of HF will cause several lung faliure. \nIngestion of HF may cause death with small amount",
        prep: prepara,
        ppe:
            "1. Laboratory coat and acid resistant apron\n2.Close-toed shoes and long pants\n3.Googles and full face shield\n4.Nitrile rubber gloves can be used for low concentrated HF",
        whims: [wtoxi, wcorro],
        backImg: bImg,
      ))
      ..add(testdetailData(
          chemName: "Picric Acid",
          chemicalP: "Dry acid is yellow crystal, soluable to water. Highly sensitve to heat/shick/friction and may explode\nLess dangerous with 10% water, but still dangerous when acid is less than 30% water, very reactive.\nIts a flammable solid",
          toxic: "•Corrosive to eyes and skins\n•Can cause sever allergic reaction once sensitized\n•Harmful if swollowed\n•Symptoms are headache, nausea, vomitting, diarrhea, convlusions or even death",
          prep: prepara,
          ppe: "\n•Safety Googles\n•Closed lab coat with sleeves fully extended to the wrist lab coat\n•neoprene rubber gloves and nitrile rubber when used for short periods only (resistance to breakthrough within 1 to 4 hours). Verify with manufacturer’s glove compatibility charts.",
          whims: [
            wtoxi,
            wcorro,
            wexplo
          ]))
      ..add(testdetailData(
          chemName: "Hydrochloric Acid",
          chemicalP:
              "Clear colorless solution and has a highly pungent odor, soluable to water.\nStrong acid, can complete dossociated in water, can dosspve many metals and forms oxideized metal chlorides and hydrogen gas",
          toxic: "•Corrosive to eye, skin and mucous membranes.\n•Skin Contact can results in severe burns and scarring\n•Inhalation will cause harm to eyes nose and respiratory tract\n•Ingestion will cause sever damage to mucous membrane, esophagus and stomach",
          prep: prepara,
          ppe: "\n•Lab Coat\n•Safty glasses\n•Face shield when splash is feasible\n•Gloves must be checked before use and exchange when broke or containmed\n•Wash forarm after gloves removed",
          whims: [wcorro, wtoxi]));
  }
}
