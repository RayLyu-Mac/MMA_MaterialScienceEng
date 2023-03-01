class testdetailData {
  String chemName;
  String chemicalP;
  String physicalP;
  String toxic;
  String prep;
  String ppe;
  String? backImg;
  double? contFontS;
  String? addImg;
  List<String> whims;

  testdetailData(
      {this.backImg,
      required this.physicalP,
      this.addImg,
      required this.chemicalP,
      this.contFontS,
      required this.ppe,
      required this.prep,
      required this.whims,
      required this.chemName,
      required this.toxic});
}

String wtoxi =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/death.jpg?raw=true";
String wcorro =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/corrosive.jpg?raw=true";
String wexplo =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/explode.jpg?raw=true";
String prepara =
    "1.Read MSDS for HF\n2.Preview the SOPs\n3. Make sure that you can locate the first aid kit and the chemical spill kit\nMake sure perform the experiment inside the fumehood";
String bImg =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/IronS.jpg?raw=true";
List<testdetailData> acidPropData = [
  (testdetailData(
    chemName: "Hydrofluoric Acid HF",
    // https://pubchem.ncbi.nlm.nih.gov/compound/Hydrofluoric-acid#section=Experimental-Properties
    physicalP:
        "1.Hydrogen fluoride, anhydrous appears as a colorless fuming liquid boiling at 67°F. Shipped as a liquid confined under its own vapor pressure.\n2.Vapors are heavier than air. Density 8.2 lb / gal.",
    chemicalP:
        "1.It can react with glazes, enamels, pottery, concrete, rubber,leather, many metals (especially cast iron) and many organic compounds. \n2.It can etch glass and it may explode when it interacts with hydrogen gas.",
    toxic:
        "1.It can cause destruction of deep tissue layers, concentrated acid will case sever skin burn. \n2.Contact with eye will cause cornea destruction and blindess. \n3.Inhalation of HF will cause several lung faliure. \n4.Ingestion of HF may cause death with small amount",
    prep: prepara,
    ppe:
        "1. Laboratory coat and acid resistant apron\n2.Close-toed shoes and long pants\n3.Googles and full face shield\n4.Nitrile rubber gloves can be used for low concentrated HF",
    whims: [wtoxi, wcorro],
    backImg: bImg,
  )),
  (testdetailData(
      //https://pubchem.ncbi.nlm.nih.gov/compound/Picric-acid#section=Computed-Properties
      chemName: "Picric Acid",
      physicalP: "Dry acid is yellow crystal, soluable to water.",
      chemicalP: "1.Molecular weight is 229 g/mol\n2.Highly sensitve to heat/shick/friction and may explode\n3.Less dangerous with 10% water, but still dangerous when acid is less than 30% water, very reactive.\nIts a flammable solid",
      toxic: "1.Corrosive to eyes and skins\n2.Can cause sever allergic reaction once sensitized\n3.Harmful if swollowed\n4.Symptoms are headache, nausea, vomitting, diarrhea, convlusions or even death",
      prep: prepara,
      ppe: "1.Safety Googles\n2.Closed lab coat with sleeves fully extended to the wrist lab coat\n3.neoprene rubber gloves and nitrile rubber when used for short periods only (resistance to breakthrough within 1 to 4 hours). Verify with manufacturer’s glove compatibility charts.",
      whims: [wtoxi, wcorro, wexplo])),
  (testdetailData(
      // https://www.vedantu.com/chemistry/hydrochloric-acid
      chemName: "Hydrochloric Acid",
      physicalP:
          "1.Clear colorless solution and has a highly pungent odor.\n2.Boiling points, density, pH depends on the concentration",
      chemicalP: "1.Soluable to water.\n2.Strong acid, can complete dossociated in water, can dosspve many metals and forms oxideized metal chlorides and hydrogen gas",
      toxic: "1.Corrosive to eye, skin and mucous membranes.\n2.Skin Contact can results in severe burns and scarring\n3.Inhalation will cause harm to eyes nose and respiratory tract\n4.Ingestion will cause sever damage to mucous membrane, esophagus and stomach",
      prep: prepara,
      ppe: "\n1.Lab Coat\n2.Safty glasses\n3.Face shield when splash is feasible\n4.Gloves must be checked befor use and exchange when broke or containmed\n5.Wash forarm after gloves removed",
      whims: [wcorro, wtoxi]))
];
