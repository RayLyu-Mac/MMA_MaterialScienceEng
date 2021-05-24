import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/hardnessTest/hardness_t_back.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/Instruction/AutomaticPolisher/autoPolisherMain.dart';

class AutomaticMicroHardnessMain extends StatefulWidget {
  AutomaticMicroHardnessMain({Key key}) : super(key: key);

  @override
  _AutomaticMicroHardnessMainState createState() =>
      _AutomaticMicroHardnessMainState();
}

class _AutomaticMicroHardnessMainState
    extends State<AutomaticMicroHardnessMain> {
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
        title: Text("Automatic Micro Hardness Testter"),
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
                    'Microhardness testing (Vickers Hardness)  an indent made on the surface of a polished sample.  There are multiple loads which can be applied to the sample (5 grams – 1 kg).  The method is determined by the amount the sample can resist penetration.  The indent is then measured, and the dimensions are used in a calculation HV = 1.854(F/D2), with F being the applied load (measured in grams-force) and D2 the area of the indentation (measured in square millimeters)',
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
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mht.jpg?raw=true"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              buttonName: "Instruction",
              warnNote:
                  "•Ask Technical Staff for Holder \n•Ensure the Magnification is at 100X\n•Damage will occur to the indenter if the indenter comes in contact with holder\n•Cut the sample slowly\n•Ensure the sample is in focus before move to 400X",
              pageTo: AutoPolisherinstruction(),
            ),
            functionButtonMode(
              top: _screenH / 1.8,
              left: _screenWidth / 12,
              buttonName: "Schedulling",
              url: _launchURL,
            ),
            functionButtonMode(
                top: _screenH / 1.8,
                left: _screenWidth / 2 + 16,
                buttonName: "Theory",
                pageTo: hardness_test_bg()),
            functionButtonMode(
                top: _screenH / 1.56,
                left: _screenWidth / 2 + 16,
                buttonName: "Manager",
                pageTo: EmailContent(
                  emailTo: "raylyu11@gmail.com",
                  nameOfEqup: "Automatic Micro-Hardness Tester",
                  locationOfEqup: "JHE 123",
                )),
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
                                    loc: "JHE 236 ICP-OES",
                                    themem_color: Colors.red[100],
                                  )));
                    }))
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://msebooking.mcmaster.ca/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
