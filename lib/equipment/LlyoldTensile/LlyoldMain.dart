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
        title: "llyold Tensile Tester",
        warnVido: "bdunyatEEG0",
        instruction: LlyoTensileinstruction(),
        theory: tensile_test_bg(),
        backC: Colors.amber[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/LyolTenT.jpg?raw=true",
        intro:
            "'Used to measure the relative toughness of a material, more specifically, the energy absorbed by a standard notched specimen while breaking under an impact load. Has been used as an economical quality control method to determine the notch sensitivity. The standard size for specimen: 55 mm *10 mm* 10mm, having a notch machined across one of the larger dimensions.'");
  }
}
