class testdetailData {
  String title;
  String content;
  String addOnImg;
  double titleFontsize;
  double contentFontsize;
  double picLeft;

  testdetailData(
      {required this.title,
      required this.content,
      required this.addOnImg,
      this.contentFontsize = 10,
      required this.picLeft,
      required this.titleFontsize});
}

List<testdetailData> whims = [
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title:
          "Biohazardous Infectious Materials \n(Organisms can cause diseases)",
      content:
          "This iconic symbol signifies that the material contains organisms harmful to our health by causing disease or other serious illnesses.\nThese organisms include bacteria, viruses, fungi and parasites. This symbol will also be placed on containers for medical waste. The risks associated with biohazardous materials are serious and if you fear you have been exposed, seek medical attention immediately.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/bioharzard.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Gas Cylinder \n(Gases under pressure)",
      content:
          "This symbol is used to identify that the gas contained in a cylinder or other similar storage device is under high pressure and will be sensitive to punctures or leaks, providing the risk of explosions or allowing the cylinder to turn into a makeshift projectile. Often times the gases contained within these cylinders are hazardous themselves so always be aware of attached labelling.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/compress.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Corrosion \n(Can cause corrosive damage)",
      content:
          "This signifies that the material can chemically react to material or skin, destroying them in the process. This damage is devastating and chemicals react immediately. Extreme caution must be taken when handling these materials with proper PPE worn at all times when doing so. Some also have the potential to cause adverse health effects in addition to corrosion.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/corrosive.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Skull & Crossbones \n(Dangerous even small amounts)",
      content:
          "This symbol has long been associated with death and it is used in materials labelling to warn you that the relevant product has potential to be fatal, toxic, or extremely harmful even with a limited exposure. This can be exposure through contact with skin, inhalation, or swallowing. Proper handling should be taken extremely seriously with these materials.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/death.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Environment \n(Danger to aquatic environment)",
      content:
          "While this label is not mandatory in Canada, it still may appear on imported materials or from suppliers that choose to highlight these hazards. These materials should be kept out of water sources as they will harm aquatic life and lead to toxic impacts to the environment in those settings.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/enviro.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Flame \n(Fire hazard)",
      content:
          "These materials or products are prone to easy ignition and can burn rapidly. They should be handled with extra care and kept away from heat and open flames at all costs. Understand that for a fire to burn it requires oxygen, heat and fuel, so these should never be brought together around these materials.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/fire.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Health Hazard \n(May cause serious health effects)",
      content:
          "These materials will cause chronic health effects from disease, sickness, cancer, infertility, and more. While these materials if contacted may not cause serious injury or damage, long term exposure without proper protection can lead to very serious chronic health conditions.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/hazard.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Flame Over Circle \n(Oxidizing hazards)",
      content:
          "Oxidizing materials are materials that give off increased levels of oxygen or other oxidizing chemicals which greatly increase the risk of a fire or explosion, even under mild conditions. These materials do not burn themselves, but will improve the likelihood of combustable materials around them for caching fire such as wood, textiles or other flammable materials, with lower levels of heat needed.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/fire.jpg?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title:
          "Division 2 - Poisonous and Infectious Material Other Toxic Effect)",
      content:
          "May cause death or permanent injury following repeated or long term exposure May irritate eyes, skin and breathing and may lead to  long term lung problems and skin sensitivity May cause liver or kidney damage, cancer, birth defects  or sterility Avoid inhalation, skin and eye contact Wear recommended personal protective equipment Wash hands after use.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/tip.png?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Class F Dangerously reactive material",
      content:
          "May be unstable, reacting dangerously to jarring, compression, heat or light exposure. May burn, explode or produce dangerous gases when mixed with incompatible materials \nStore away from heat sources Avoid shock and friction Wear the recommended personal protective equipment.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/dang.png?raw=true")),
  (testdetailData(
      picLeft: 10,
      titleFontsize: 13,
      title: "Exploding Bomb \n(Explosive or reactivity hazards)",
      content:
          "The symbol of an object exploding is used to clearly signify that the material is explosive and risks combusting when handled improperly. These materials should be handled only by professionals under safe conditions. Proper storage of these materials is paramount as some may be sensitive to heat or light and pose a massive risk for serious injury or death.",
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/oxide.jpg?raw=true"))
];
