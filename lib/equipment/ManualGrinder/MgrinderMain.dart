import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/manualGrinder/ManualGMain.dart';
import 'MgrinderBackG.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class ManualGrinder extends StatefulWidget {
  final String? location;
  final String? emailTo;
  ManualGrinder({Key? key, this.location, this.emailTo}) : super(key: key);

  @override
  _ManualGrinderState createState() => _ManualGrinderState();
}

class _ManualGrinderState extends State<ManualGrinder> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Llyold Tensile Tester",
        warnNote:
            "•Securely hold the sample as it could become a projectile if the grinding wheel catches the sample.\n•The water is cold, and your hand can become numb, you may not realize that your finger is touching the grinding paper and you can grind your skin off your finger.",
        instruction: ManualGrinderinstruction(),
        theory: MgrinderBackg(),
        backC: Colors.amber.shade100,
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true",
        intro:
            "'Used to measure the relative toughness of a material, more specifically, the energy absorbed by a standard notched specimen while breaking under an impact load. Has been used as an economical quality control method to determine the notch sensitivity. The standard size for specimen: 55 mm *10 mm* 10mm, having a notch machined across one of the larger dimensions.'");
  }
}
