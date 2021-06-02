import 'package:flutter/material.dart';
import 'package:mma_mse/Search/tools/HardnessConv/Data.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/user_note.dart';
import '../../functionButtonMode.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/tensile_test_bg.dart';
import 'package:mma_mse/Instruction/ManualMicroHardness/MMicroHardMain.dart';

class ManualMicroHardness extends StatefulWidget {
  final String location;
  final String emailTo;
  ManualMicroHardness(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _ManualMicroHardnessState createState() => _ManualMicroHardnessState();
}

class _ManualMicroHardnessState extends State<ManualMicroHardness> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manual Micro-Hardness Tester"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: _screenH / 45,
                left: _screenWidth / 2 + 2,
                child: Text(
                  'Introduction',
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                )),
            Positioned(
              top: _screenH / 16,
              left: _screenWidth / 2 + 2,
              child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.2, height: 280),
                  child: Text(
                    'Used to measure the relative toughness of a material, more specifically, the energy absorbed by a standard notched specimen while breaking under an impact load. Has been used as an economical quality control method to determine the notch sensitivity. The standard size for specimen: 55 mm *10 mm* 10mm, having a notch machined across one of the larger dimensions.',
                    style: TextStyle(
                        fontSize: _screenH / 55, fontWeight: FontWeight.bold),
                  )),
            ),
            Positioned(
              top: _screenH / 30,
              left: _screenWidth / 30 + 2,
              child: GestureDetector(
                child: Container(
                    constraints: BoxConstraints.expand(
                        width: _screenWidth / 2.5, height: _screenH / 2),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Positioned(
                top: _screenH / 2.2,
                left: _screenWidth / 1.25,
                child: IconButton(
                  tooltip: "Hardness Conversion",
                  iconSize: _screenH / 17,
                  icon: Icon(Icons.file_present),
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 700),
                            child: hardnessData(),
                            type: PageTransitionType.scale,
                            alignment: Alignment.topCenter));
                  },
                )),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              buttonName: "Instruction",
              pageTo: ManualMicHardnessInstru(),
              warnV: "t-4WN785oxM",
            ),
            functionButtonMode(
              top: _screenH / 1.8,
              left: _screenWidth / 12,
              buttonName: "Theory",
              pageTo: tensile_test_bg(),
            ),
            functionButtonMode(
              top: _screenH / 1.8,
              left: _screenWidth / 2 + 16,
              buttonName: "Result",
              pageTo: tensile_test_bg(),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 2 + 16,
              buttonName: "Manager",
              pageTo: EmailContent(
                  locationOfEqup: widget.location != null
                      ? widget.location
                      : "Not Specificed",
                  nameOfEqup: "Manual MicroHardness Tester",
                  emailTo: widget.emailTo != null
                      ? widget.emailTo
                      : "Please enter the email address!"),
            ),
            Positioned(
                top: _screenH / 1.33,
                left: _screenWidth / 1.3,
                child: FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => user_note(
                                    loc: "ML Charpy Impact",
                                    themem_color: Colors.green[100],
                                  )));
                    }))
          ],
        ),
      ),
    );
  }
}
