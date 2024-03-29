import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TestDetailFormat.dart';

String bImg =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/caracc.jpg?raw=true";
List<testdetailData> tensile = [
  (testdetailData(
      title: " Declaration",
      content:
          "In this section you are going to learn about the UTM used in three-point test. \n \nThe content of this sections comes from Matls 3M03: Mechanical Behavior of Material Demo 1b\n \nReference:\nRubel, O. Material 3M03, Lab 1: Laminated Structure analysis, McMaster University.",
      backImg: bImg,
      addOnImg: "Null")),
  (testdetailData(
      title: "Background",
      content:
          "Bones are complex materials necessary for daily function and keeping us alive. They allow our bodies to move by providing a framework for muscles and tendons to attach, protect organs such as our heart and lungs, and even produce blood cells. Therefore, two types of bones exist in our body.\n \nCorticol Bone: Stiff with high elastic modulus. \n Trabecular bone: Porous and has low elastic modulus. \n\nThe common bone structure in human body is cortical bone forms the outside and the trabecular bone is sandwiched inside. ",
      backImg: bImg,
      height: 1.7,
      top: 3,
      width: 1.9,
      left: 4,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/bones.png?raw=true")),
  (testdetailData(
      title: "Introduction",
      content:
          "Composites are a class of material formed when two or more constituent materials are combined to achieve desired mechanical properties. There are three main categories of composites; particle reinforced composites, fiber reinforced composites, and structural composites [3]. This investigation will focus on structural (sandwich) composites. It is clear that our bone structure consists with the sandwich model. \nTherefore this experiment will use the material that has similar material property to human bone to find the advantage of this structure by simulating the car accident situation.",
      backImg: bImg,
      height: 1.7,
      top: 3,
      width: 1.9,
      left: 4,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/sandw.jpg?raw=true")),
  (testdetailData(
      title: "Model Introduction",
      content:
          "The Al alloy 6061 are used to mimic the properties for cortical bone and pure Al are used to mimic the trabecular bone. \nThe two conditions (Laminated structure (Pure Al sandwiched by 6061 alloy), pure Al) will be tested by calculating the stress vs. strain curve and determined fracture point to predict the properties as well the tensile stress and tensile yield stress. ",
      backImg: bImg,
      height: 1.7,
      top: 3,
      width: 1.9,
      left: 4,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/tensileBg.jpg?raw=true")),
  (testdetailData(
      title: "Material Properties Involved",
      content:
          "When using a 3-point bend test, the material properties found are referred to as ‘flexural’ properties meaning the material was resisting bend forces when the values were measured. As the samples in this lab will be under bending conditions, we will focus on the flexural properties.\nThe flexural elastic modulus is calculated by finding the slope of the linear region of the load vs. deflection or stress vs. strain graph.",
      backImg: bImg,
      height: 1.7,
      top: 3,
      width: 1.9,
      left: 4,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/models.jpg?raw=true")),
  (testdetailData(
      title: "Procedure",
      content:
          "1.	Record dimensions of the specimen (b, d) and setup (L). \n2. Load the sample \n3. Execute ‘3-point bend test’ algorithm to collect load vs displacement data. Note that the crosshead displacement stored in the output file does not directly represent the deflection D in Eqs. (1) and (2). To obtain the deflection, the crosshead displacement needs to be adjusted for any distance the load pit traversed before establishing a firm contact with a surface of the sample. \n4. Plot the load vs. deflection and stress vs. strain curves to determine the elastic modulus from the linear region. Also, determine the load and stress at fracture. \n5. Repeat steps 1–4 for all samples.",
      backImg: bImg,
      pageTo: tensile_test(),
      height: 1.7,
      top: 3,
      width: 1.9,
      left: 4,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mts.jpg?raw=true")),
  (testdetailData(
      title: "Raw Data: Load versus Deflection",
      content:
          "Directly from tensile test machine we can get the data for load versus deflection, this is the data which directly reflect the changes in this experiment.\n \nClick the picture to see the actual process!",
      backImg: bImg,
      height: 1.7,
      top: 3,
      width: 1.9,
      left: 4,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/load.png?raw=true")),
  (testdetailData(
      title: "Processed Data: Stress Versus Strain",
      content:
          "We need to further processed data to stress versus strain so we can use that to investigate the material property.\n \nFor load to stress: 3PL/2d^2b (Need formula) (MPa=1N/mm^2)\n For Strain: Deflection/Length (mm/mm)",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/stress.png?raw=true")),
  (testdetailData(
      title: "Comparison",
      content:
          "After we calculated the material property of the sample we can start to compare the difference of two samples.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/result.jpg?raw=true"))
];
