import 'package:flutter/material.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/user_note.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/tensile_test_bg.dart';
import 'package:mma_mse/Instruction/Etching/EtchingMain.dart';
import 'acidProtocol.dart';
import 'package:page_transition/page_transition.dart';

class Etching extends StatefulWidget {
  final String location;
  final String emailTo;
  Etching(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _EtchingState createState() => _EtchingState();
}

class _EtchingState extends State<Etching> {
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
        title: Text("Etching Process"),
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
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/eth.jpg?raw=true"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Positioned(
              top: _screenH / 2.2,
              left: _screenWidth / 1.25,
              child: IconButton(
                  tooltip: "HF working Tip",
                  iconSize: _screenH / 20,
                  icon: Icon(Icons.warning_outlined),
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 700),
                            child: AcidSafty(),
                            type: PageTransitionType.scale,
                            alignment: Alignment.topCenter));
                  }),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              buttonName: "Instruction",
              pageTo: Etchinginstruction(),
              warnNote:
                  "•All Work Involve Chemical Should be done in Fume Hood \n•Make sure you are familiar with the location for eyewash and shower \n•Make sure the Solvent Spill Kit is around \n•If you are going to use HF please read the manual before proceeding",
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
                  nameOfEqup: "Etching",
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
                                    loc: "Etching",
                                    themem_color: Colors.green[100],
                                  )));
                    }))
          ],
        ),
      ),
    );
  }
}
