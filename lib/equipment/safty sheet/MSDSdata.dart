import 'package:flutter/material.dart';

Color green = Colors.green[300];
Color yellow = Colors.yellow[300];
Color blue = Colors.blue[300];
Color grey = Colors.grey[300];
Color red = Colors.red[300];
Color redD = Colors.redAccent;
Color white = Colors.white70;
Map<Color, String> saftyLevel = {
  green: "General Storage can be stored on higher shelves",
  yellow:
      "tore corrosives in this group in chemical resistant secondary containers, store away from organics and flammables or other incompatible materials",
  blue:
      "When necessary, secure poison area or separate from other chemical staorage",
  grey:
      "Separated from white store in chemical resistant catch trays or corrosive cabinat, store acids away from bases",
  red:
      "Store in flammable storage cabinet/ area, but separate flammable solids from other hazard classes",
  redD:
      "Separated from Red store in flammable storage cabinet/ area, but separate flammable solids from other hazard classes",
  white:
      "eparated from Red store in flammable storage cabinet/ area, but separate flammable solids from other hazard classes"
};

class msdsData {
  String location;
  String name;
  String type;
  Color level;
  String short;

  msdsData({this.location, this.name, this.type, this.level, this.short});

  List<msdsData> msDataList() {
    List materialData = List<msdsData>();
    return materialData
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Alumina",
          level: green,
          type: "Solid",
          short: "Al2O3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Ammonium Sulphate",
          level: green,
          type: "Solid",
          short: "AlH4NO8S2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Hydroxide",
          level: green,
          type: "Solid",
          short: "Al(OH)3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Alumina",
          level: green,
          type: "Solid",
          short: "Al2O3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Nitrate",
          level: yellow,
          type: "Solid",
          short: "Al(NO3)3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Bifluoride",
          level: white,
          type: "Solid",
          short: "NH4HF2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Potassium Sulfate",
          level: green,
          type: "Solid",
          short: "KAl(SO4)2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Chloride",
          level: green,
          type: "Solid",
          short: "NH4Cl"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Copper Chloride",
          level: green,
          type: "Solid",
          short: "CuCl2•2NH4Cl.2H2O"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Ferrous",
          level: green,
          type: "Solid",
          short: "(NH4)2Fe(SO4)2(H2O)6"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Hydroxide",
          level: grey,
          type: "Solid",
          short: "NH4OH"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Molybdate",
          level: green,
          type: "Solid",
          short: "(NH4)6Mo7O24"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Sulphate",
          level: blue,
          type: "Solid",
          short: "(NH4)2SO4"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Iodine",
          level: red,
          type: "Solid",
          short: "I"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Antimony Trioxide",
          level: blue,
          type: "Solid",
          short: "Sb2O3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ascorbic Acid",
          level: green,
          type: "Solid",
          short: "Vitamin C"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Barium Carbonate",
          level: blue,
          type: "Solid",
          short: "BaCO3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Barium chloride dihydrate",
          level: blue,
          type: "Solid",
          short: "BaCl2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Borax",
          level: green,
          type: "Solid",
          short: "Na₂B₄O₇"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Bromo-Phenol Blue",
          level: green,
          type: "Solid",
          short: "C19H10Br4O5S"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcein indicator",
          level: blue,
          type: "Solid",
          short: "fluorexon"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium Carbonate",
          level: blue,
          type: "Solid",
          short: "CaCO3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium Chloride",
          level: red,
          type: "Solid",
          short: "CaCl2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Caclium Chlordie Anhydrous",
          level: green,
          type: "Solid",
          short: "CaCl2(H2O)"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium Fluoride",
          level: green,
          type: "Solid",
          short: "CaF"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium hydroxide",
          level: green,
          type: "Solid",
          short: "Ca(OH)2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium Indicator",
          level: green,
          type: "Solid",
          short: "No Idea"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium Nitrate",
          level: yellow,
          type: "Solid",
          short: "Ca(NO3)2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium Oxide",
          level: green,
          type: "Solid",
          short: "CaO"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Calcium Sulfide",
          level: green,
          type: "Solid",
          short: "CaS"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cerium Sulphate",
          level: yellow,
          type: "Solid",
          short: "Ce(SO4)2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cerium Chloride",
          level: green,
          type: "Solid",
          short: "CeCl3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Charcoal (activated)",
          level: green,
          type: "Solid",
          short: "C"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Chromium sulfide",
          level: green,
          type: "Solid",
          short: "Cr2S3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Chromium Sulphate",
          level: green,
          type: "Solid",
          short: "Cr2(SO4)3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Chromium oxide",
          level: green,
          type: "Solid",
          short: "Cr2O3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Copper II Chloride Di-hydrate",
          level: white,
          type: "Solid",
          short: "Cu2Cl2H2O"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Copper II Sulphate Pentahydrate",
          level: green,
          type: "Solid",
          short: "Cu(So4)2 5H20"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cupric chloride",
          level: green,
          type: "Solid",
          short: "CuCl2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cupric Nitrate",
          level: yellow,
          type: "Solid",
          short: "Cu(NO3)2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cupric oxide",
          level: green,
          type: "Solid",
          short: "CuO"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cupric sulfide",
          level: green,
          type: "Solid",
          short: "CuS"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cupric sulphate anhydrous",
          level: green,
          type: "Solid",
          short: "CuSO4"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cuprous Oxide",
          level: green,
          type: "Solid",
          short: "Cu2O"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Cuprous Chloride",
          level: red,
          type: "Solid",
          short: "CuCl"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Dimethylglyoxime",
          level: green,
          type: "Organic",
          short: "CH₃CCCH₃"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Dioctyl Phthalate",
          level: green,
          type: "Organic",
          short: "C₆H₄(CO₂C₈H₁₇)₂"));
  }
}
