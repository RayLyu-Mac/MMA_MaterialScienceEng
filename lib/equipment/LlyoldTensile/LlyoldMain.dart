import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/tensile_test_bg.dart';
import 'package:mma_mse/Instruction/Lloyds Tensile Tester/LlyoMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class LlyoldTensileTester extends StatefulWidget {
  final String location;
  final String emailTo;
  LlyoldTensileTester(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _LlyoldTensileTesterState createState() => _LlyoldTensileTesterState();
}

class _LlyoldTensileTesterState extends State<LlyoldTensileTester> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Llyold Tensile Tester",
        warnVido: "bdunyatEEG0",
        instruction: LlyoTensileinstruction(),
        theory: tensile_test_bg(),
        backC: Colors.amber[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/Llyold.png?raw=true",
        intro:
            "A universal testing machine (UTM), also known as a universal tester,[1] materials testing machine or materials test frame, is used to test the tensile strength and compressive strength of materials. An earlier name for a tensile testing machine is a tensometer. The universal part of the name reflects that it can perform many standard tensile and compression tests on materials, components, and structures (in other words, that it is versatile).\n \nThere are three UTM in MSE: Which as load capacity of 50kN/10kN/30kN(Lloyds Tensile Tester) Choose appropriate load capacity based on the material and the size");
  }
}
