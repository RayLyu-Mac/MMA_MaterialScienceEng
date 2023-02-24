import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/tensile_test_bg.dart';
import 'package:mma_mse/Instruction/Lloyds Tensile Tester/LlyoMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class LlyoldTensileTester extends StatefulWidget {
  final String? location;
  final String? emailTo;
  final bool? ori;
  LlyoldTensileTester(
      {Key? key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.ori,
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
        fontSize: 47,
        oritation: widget.ori,
        backC: Colors.amber.shade100,
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/Llyold.png?raw=true",
        intro:
            "Tensile testing machine is used to test the tensile strength and compressive strength of materials. Which can record the loading and displacement. The data can be output and analysis in Excel. \n \nThere are three UTM in MSE: Which as load capacity of 50kN/10kN/30kN(Lloyds Tensile Tester) Choose appropriate load capacity based on the material and the size");
  }
}
