import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TestDetailFormat.dart';

String bImg =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/bg.jpg?raw=true";
List<testdetailData> creepData = [
  (testdetailData(
    title: " Declaration",
    content:
        "In this section you are going to learn about the UTM used in measuring the resistance to creep of the aluminum and 6061 alloy. \n \nThe content of this sections comes from Matls 3M03: Mechanical Behavior of Material Demo 4\n \nReference:\nRubel, O. Material 3M03, Lab 4: CREEP AND HIGH TEMPERATURE DEFORMATION, McMaster University.",
    backImg: bImg,
  )),
  (testdetailData(
      title: "Background",
      content:
          "At room temperature, most metals and ceramics deform in a way which depends on stress but which, for practical purposes, is independent of time (the effect of strain rate is very weak). \nAs the temperature increases, loads which give no permanent deformation at room temperature can cause materials to creep. Creep is slow, continuous deformation with time. The strain, instead of depending only on the stress, now depends on temperature and time as well.",
      backImg: bImg,
      top: 1.9,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/Intro.jpg?raw=true")),
  (testdetailData(
      title: "Definition of Creep",
      top: 1.9,
      height: 3.2,
      content:
          "In materials science, creep (sometimes called cold flow) is the tendency of a solid material to move slowly or deform permanently under the influence of persistent mechanical stresses.\nCreep will cause material undergo a time dependent increase in length. This will be very dangerous in some specific situations like blade in high speed rotation, which may cause the damage to whole engine.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/defForCreep.png?raw=true")),
  (testdetailData(
      title: "Purpose",
      content:
          "Purpose of this lab is to examine two different materials in creep resistance. One is pure aluminum, and the other is 6061 aluminum alloy. The 6061 alloy usually contains silicon, iron, magnesium, and chromium as the impurities. Those impurities can help to stabilize the microstructure during the experiment which expected to have a higher creep resistance compared to the pure aluminum. \nHence in this lab we are going to perform the creep test on both samples to proof this statement. ",
      backImg: bImg,
      top: 1.82,
      height: 3.8,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/alloy.jpg?raw=true")),
  (testdetailData(
      title: "Creep Condition",
      top: 1.8,
      height: 3.1,
      content:
          "Deformation mechanism maps like the one shown in Fig. 1 below can be used to summarize the set of conditions under which a given creep mechanism is expected to dominate. As discussed in class, diffusional flow or diffusional creep would be expected to lead to a creep exponent of n = 1. Dislocation creep leads to theoretical exponents of n = 5 in the case of core diffusion control and n = 3 in the case of bulk-diffusion control. In practice, however, the observed dislocation creep exponents are much larger, in the range of n = 3 − 12.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/creepConditions.jpg?raw=true")),
  (testdetailData(
      title: "Stress Relaxation",
      top: 1.9,
      height: 3.2,
      content:
          "Another manifestation of creep is the process of stress relaxation. In this case, the total applied strain is held constant for an extended period of time and the stress needed to maintain this strain is recorded. The stress will decay as the material deforms gradually with time and elastic strains (which give rise to the recorded stress) are gradually replaced with permanent plastic deformation. The derivation is straightforward; the total strain is the sum of the elastic and plastic parts.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/stressRelx.jpg?raw=true")),
  (testdetailData(
      title: "Experiment Setting:",
      top: 1.9,
      height: 3.2,
      content:
          "In this demonstration we will examine the stress relaxation behaviour of pure aluminum (99.95%) and alloy 6061. The tests will be carried out at room temperature (298 K) which corresponds to a homologous temperature of T/Tm = 0.32. This corresponds to the lower limit of the temperatures for which we expect to see creep or time dependent deformation.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/expSet.jpg?raw=true")),
  (testdetailData(
      title: "Procedure I (Pure Al)",
      top: 1.7,
      content:
          "1. Record the diameter of the pure aluminum tensile specimen before pulling it to a strain of 1.2%.\n2. Once a strain of 1.2% has been reached, keep the displacement constant and record the decay of the force for 15 minutes. \n3. Plot the stress vs. time curve. Your time t = 0, should be the point when the strain has first reached 1.2%. \n4. Estimate the value of exponent n based on the relevant creep mechanism from Fig. 1. Using this value of n and your experimental data1 and E = 69 GPa for both materials, try to estimate the value of the constant B. ",
      backImg: bImg,
      pageTo: tensile_test(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mts.jpg?raw=true")),
  (testdetailData(
      title: "Procedure I (6061 Alloy)",
      top: 1.95,
      content:
          "5. Repeat the above calculations for alloy 6061. Comment on the difference between the behavior of the pure material and that of alloy 6061. \n6. Plot the normalized stress (σ/σmax) curves versus time for both pure Al and alloy 6061. Compare the behavior of two metals from this graph.",
      backImg: bImg,
      pageTo: tensile_test(),
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mts.jpg?raw=true")),
  (testdetailData(
      title: "Data Collected",
      top: 2.1,
      height: 3.2,
      content:
          "The data collected in this experiment are stress in (MPa) versus time (s). By ploting those data we can know the stress that need to hold the sample at certain strain rate",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/Raw.png?raw=true")),
  (testdetailData(
      title: "Data Normalized and Comparison",
      top: 2.1,
      height: 3.2,
      content:
          "The data we collected will be normalized by dividing the maximum value of each curve. By plotting two curves together we can compare the stress relexation rate by observing the % of stress drop over time.",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/Normalized.png?raw=true")),
  (testdetailData(
      title: "Stress Term Plot",
      top: 2.1,
      height: 3.2,
      content:
          "After normalization we will calculate the stress term of the sample, before that we need to choose a proper n value from the previous section. The plot for the stress term should looks similar to the plot below",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/stressterm.png?raw=true")),
  (testdetailData(
      title: "Linear region",
      top: 2.1,
      height: 3.2,
      content:
          "After we have the stress term vs time plot, we will be focus on the linear region of the plot, then we used the slope of this region and use that to calculate the B constant for the sample and make comparison between two samples",
      backImg: bImg,
      addOnImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/Linear.png?raw=true")),
  (testdetailData(
    title: "Conclusion",
    content:
        "In this lab we investigate on two different material sample, one is pure Al and the other is 6061 Al alloy. The experiment measures the stress for keeping the strain rate at 1.2% for certain time and use that value to calculate the constant B. \nBy comparing this constant, we can know how two sample resist to creep. The result shows that the alloy sample has a creep constant 13% higher than the pure sample. This can be explained by the different composition of the two samples, due to the exist of different element in the alloy, the structure of the material will be much more compact than the pure material and that will decrease the diffusion rate, increasing it’s resistant to creep. ",
    backImg: bImg,
  ))
];
