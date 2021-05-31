import 'package:flutter/material.dart';

Color green = Colors.green[300];
Color yellow = Colors.yellow[300];
Color blue = Colors.blue[300];
Color grey = Colors.grey[300];
Color red = Colors.red[300];
Color redD = Colors.redAccent;
Color white = Colors.white70;
String locJHE240246A = "JHE-240 /246/A";
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
          short: "C₆H₄(CO₂C₈H₁₇)₂"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ferric Ammonium Sulphate",
          level: green,
          type: "Organic",
          short: "NH₄Fe(SO₄)₂"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ferric Chloride",
          level: white,
          type: "Organic",
          short: "FeCl3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ferric Nitrate",
          level: yellow,
          type: "Organic",
          short: "Fe(NO3)3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ferric Oxide",
          level: green,
          type: "Solid",
          short: "Fe2O3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ferrous Oxide",
          level: green,
          type: "Solid",
          short: "FeO"))
      ..add(
          msdsData(location: "JHE-240 /246/A", name: "Ferrous Oxalate", level: green, type: "Solid", short: "FeC2O4"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Ferrous Oxide", level: green, type: "Solid", short: "FeO"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Ferrous Sulphate", level: green, type: "Solid", short: "FeSO4"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Ferrous Sulphate Hetahydrate", level: green, type: "Solid", short: "FeSO4 5H2O"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Ferrous Sulphide", level: green, type: "Solid", short: "FeS"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Lithium Hydroxide", level: white, type: "Solid", short: "Li(OH)"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Lithium Metaborate", level: green, type: "Solid", short: "LiBO2"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Lithium Nitrate", level: white, type: "Solid", short: "LiNO3"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Magnesium Chloride", level: green, type: "Solid", short: "MgCl2"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Magnesium Chloride Hexahydrate", level: green, type: "Solid", short: "MgCl2 6H2O"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Magnesium Dioxide", level: yellow, type: "Solid", short: "MgO2"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Magnesium Oxide", level: green, type: "Solid", short: "MgO"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Magnesium Perchlorate Anhydrous", level: yellow, type: "Solid", short: "Mg(CLO4)2)"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Magnesium Sulfate heptahydrate", level: green, type: "Solid", short: "MgSO4 6H2O"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Magnesium Sulphate", level: green, type: "Solid", short: "MgSO4"))
      ..add(msdsData(location: "JHE-240 /246/A", name: "Manganese Dioxide", level: yellow, type: "Solid", short: "MgO2"))
      ..add(msdsData(location: locJHE240246A, name: "Mercury Chloride", level: blue, type: "Solid", short: "HgCl2"))
      ..add(msdsData(location: locJHE240246A, name: "Mercury Iodide", level: blue, type: "Solid", short: "Hgl2"))
      ..add(msdsData(location: locJHE240246A, name: "Mercury Nitrate Monohydrate", level: yellow, type: "Solid", short: "Hg(NO3)2 H2O"))
      ..add(msdsData(location: locJHE240246A, name: "Methyl Orange Indicator", level: red, type: "Liquid", short: "pH Indicator"))
      ..add(msdsData(location: locJHE240246A, name: "Methyl red Indicator", level: green, type: "Liquid", short: "pH Indicator"))
      ..add(msdsData(location: locJHE240246A, name: "Molybdenum Trioxide", level: green, type: "Solid", short: "MoO3"))
      ..add(msdsData(location: locJHE240246A, name: "Molybdenum Oxide", level: green, type: "Solid", short: "MoO2"))
      ..add(msdsData(location: locJHE240246A, name: "Nickel chloride hexahydrate", level: blue, type: "Solid", short: "NiCl3 6H2O"))
      ..add(msdsData(location: locJHE240246A, name: "Nickel sulfate hexahydrate", level: blue, type: "Solid", short: "NiSO4"))
      ..add(msdsData(location: locJHE240246A, name: "Nickel chloride ", level: blue, type: "Solid", short: "NiCl2"))
      ..add(msdsData(location: locJHE240246A, name: " Nickel fluoride", level: blue, type: "Solid", short: "NiF2"))
      ..add(msdsData(location: locJHE240246A, name: " Nickel oxide", level: green, type: "Solid", short: "NiO"))
      ..add(msdsData(location: locJHE240246A, name: "Phenolphthalein", level: green, type: "Liquid", short: "Acid Base indicator"))
      ..add(msdsData(location: locJHE240246A, name: "Phenyl Salicylate", level: red, type: "Liquid", short: "C13H10O3"))
      ..add(msdsData(location: locJHE240246A, name: "Phenylbenzohydroxamic Acid", level: red, type: "Liquid", short: "C13H11NO2"))
      ..add(msdsData(location: locJHE240246A, name: "Phosphorus Pentoxide", level: white, type: "Solid", short: "P2O5"))
      ..add(msdsData(location: locJHE240246A, name: "Platinum Oxide", level: green, type: "Solid", short: "PtO2"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Bromide", level: green, type: "Solid", short: "KBr"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Carbonate", level: green, type: "Solid", short: "K2CO3"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Chloride", level: green, type: "Solid", short: "KCl"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Dicloride", level: yellow, type: "Solid", short: "KCl2"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Ferricyanide", level: green, type: "Solid", short: "C6N6FeK3"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Ferrocyanide", level: green, type: "Solid", short: "C₆FeK₄N₆"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Hydrogen Phthalate", level: green, type: "Solid", short: "C8H5KO4"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Hydroxide", level: grey, type: "Solid", short: "KOH"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Iodate", level: yellow, type: "Solid", short: "KIO3"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Iodite", level: green, type: "Solid", short: "KIO2"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Nitrate", level: yellow, type: "Solid", short: "KNO3"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Nitrite", level: yellow, type: "Solid", short: "KNO2"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Permanganate", level: yellow, type: "Solid", short: "KMNO4"))
      ..add(msdsData(location: locJHE240246A, name: "Potassium Sulphate", level: green, type: "Solid", short: "KSO4"))
      ..add(msdsData(location: locJHE240246A, name: "Rubidium Chloride", level: blue, type: "Solid", short: "RbCl"))
      ..add(msdsData(location: locJHE240246A, name: "Scandium Oxide", level: white, type: "Solid", short: "Sc2O3"))
      ..add(msdsData(location: locJHE240246A, name: "Silicon Oxide", level: white, type: "Solid", short: "SiO4"))
      ..add(msdsData(location: locJHE240246A, name: "Silicon Nitride", level: white, type: "Solid", short: "Si3N4"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Acetate", level: green, type: "Solid", short: "C2H3NaO2"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Bicarbonate", level: green, type: "Solid", short: "NaHCO3"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Borate", level: green, type: "Solid", short: "Na₂[B₄O₅(OH)₄]·8H₂O"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Carbonate", level: green, type: "Solid", short: "Na2CO3"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Chloride", level: green, type: "Solid", short: "NaCl"))
      ..add(msdsData(location: locJHE240246A, name: "Silver Iodide", level: blue, type: "Solid", short: "AgI"))
      ..add(msdsData(location: locJHE240246A, name: "Silver nitrate", level: yellow, type: "Solid", short: "AgNO3"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Chromate", level: grey, type: "Solid", short: "Na2CrO4"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Chromate 4-Hydrate", level: red, type: "Solid", short: "Na2CrO4*4H2O"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Dichromate dihydrate", level: white, type: "Solid", short: "Na2Cr2O7"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Fluoride", level: blue, type: "Solid", short: "NaF"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Hydrogen Carbonate", level: green, type: "Solid", short: "NaHCO3"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Hydroxide", level: grey, type: "Solid", short: "NaOH"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Hypophosphite", level: yellow, type: "Solid", short: "NaPO2H2"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium metabisulphite", level: green, type: "Solid", short: "Na2S2O5"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Molybdate Dihydrate", level: green, type: "Solid", short: "Na2MoO4"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Nitrate", level: yellow, type: "Solid", short: "NaNO3"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Oleate", level: green, type: "Solid", short: "C18H33NaO2"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Oxalate", level: white, type: "Solid", short: "Na2C2O4"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Phosphate", level: green, type: "Solid", short: "NaH2PO4"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Phosphate Tribasic Dodecahydrate", level: green, type: "Cleaning Agend", short: "TSP"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Potassium Tartrate", level: green, type: "Solid", short: "KNaC4H4O6·4H2O"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium silicate", level: green, type: "Solid", short: "Na2SiO4"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium sulfate anhydrous", level: green, type: "Solid", short: "Na2SO4"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Sulphite", level: green, type: "Solid", short: "Na2SO3"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Thiocyanate", level: green, type: "Solid", short: "NaSCN"))
      ..add(msdsData(location: locJHE240246A, name: "Sodium Thiosulfate", level: green, type: "Solid", short: "Na2S2O3"))
      ..add(msdsData(location: locJHE240246A, name: "Stannic Chloride", level: white, type: "Solid", short: "SnCl₄"))
      ..add(msdsData(location: locJHE240246A, name: "Stannic Oxide", level: red, type: "Solid", short: "SnO2"))
      ..add(msdsData(location: locJHE240246A, name: "Stannic Chloride", level: red, type: "Solid", short: "SnCl4"))
      ..add(msdsData(location: locJHE240246A, name: "Stannous Sulfate", level: green, type: "Solid", short: "SnSO4"))
      ..add(msdsData(location: locJHE240246A, name: "Starch", level: green, type: "organic", short: "Starch"))
      ..add(msdsData(location: locJHE240246A, name: "strontium carbonate", level: green, type: "Solid", short: "SrCO3"))
      ..add(msdsData(location: locJHE240246A, name: "Strontium Chloride", level: green, type: "Solid", short: "SrCl2"))
      ..add(msdsData(location: locJHE240246A, name: "Sulphur", level: red, type: "Solid", short: "S"))
      ..add(msdsData(location: locJHE240246A, name: "Talcum", level: green, type: "Solid", short: "Stone"))
      ..add(msdsData(location: locJHE240246A, name: "Thallous Malonate", level: grey, type: "Solid", short: "C3H2O4Tl2"))
      ..add(msdsData(location: locJHE240246A, name: "Thymol", level: red, type: "Solid", short: "C10H14O"))
      ..add(msdsData(location: locJHE240246A, name: "Thymol Blue", level: green, type: "Solid", short: "C27H30O5S"))
      ..add(msdsData(location: locJHE240246A, name: "Titanium", level: green, type: "Solid", short: "Ti"))
      ..add(msdsData(location: locJHE240246A, name: "Titanium IV Sulfide", level: white, type: "Solid", short: "TiS2"))
      ..add(msdsData(location: locJHE240246A, name: "Tungsten", level: green, type: "Solid", short: "W"));
  }
}
