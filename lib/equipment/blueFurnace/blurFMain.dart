import 'package:flutter/material.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/user_note.dart';
import '../functionButtonMode.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/tensile_test_bg.dart';
import 'package:mma_mse/Instruction/blueFurnace/blueMain.dart';

class BlueFurnace extends StatefulWidget {
  final String location;
  final String emailTo;
  BlueFurnace(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _BlueFurnaceState createState() => _BlueFurnaceState();
}

class _BlueFurnaceState extends State<BlueFurnace> {
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
        title: Text("Blue Furnace"),
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
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Positioned(
              top: _screenH / 2.2,
              left: _screenWidth / 1.25,
              child: IconButton(
                  tooltip: "Fire Protocol",
                  iconSize: _screenH / 20,
                  icon: Icon(Icons.fireplace),
                  color: Colors.redAccent,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("If fire happens"),
                            backgroundColor: Colors.red[300].withOpacity(0.9),
                            content: Text(
                                "•If a fire occurs, follow the “McMaster University Fire Instructions” leave the room and contact a technical staff\n \n•if the fire is out of control engage the fire alarm for the building; and contact emergency response 88, then EOHSS at 24352, stay nearby to provide information to responders.\n \n•DO NOT TRY to extinguish the fire because of serious health hazard. \n \n•If you accidentally drop the sample on your self Don’t panic! Remain calm. Immediately go to the sink and rinse with cold water to try and reduce the burn, seek medical help. "),
                          );
                        });
                  }),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              buttonName: "Instruction",
              pageTo: BlueFurnaceInstr(),
              warnNote:
                  "•Make sure the furnace is properly grounded and no loose wires are connected to furnace\n•Extra cautios need to be taken since material won't appear hot but can cause severe tissue damage\n•Must wear all protective equipment\n•If fire occues leave the room and contact technicians",
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
                  nameOfEqup: "Blue Furnace",
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
