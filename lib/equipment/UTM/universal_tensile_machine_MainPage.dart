import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:mma_mse/Instruction/utm_instruction/utmInstructionMain.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/LogInRequest/logInRequest.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';

class tensile_test extends StatefulWidget {
  tensile_test({Key key}) : super(key: key);

  @override
  _tensile_testState createState() => _tensile_testState();
}

class _tensile_testState extends State<tensile_test> {
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Universal Tensile Machine"),
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
                    'A universal testing machine (UTM), also known as a universal tester,[1] materials testing machine or materials test frame, is used to test the tensile strength and compressive strength of materials. An earlier name for a tensile testing machine is a tensometer. The "universal" part of the name reflects that it can perform many standard tensile and compression tests on materials, components, and structures (in other words, that it is versatile).',
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
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/utm.jpg?raw=true"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Positioned(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              child: GestureDetector(
                  child: Container(
                    constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.9,
                      height: _screenH / 16,
                    ),
                    padding: EdgeInsets.all(6),
                    child: Text(
                      "Instruction",
                      style: TextStyle(
                          fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 4)),
                  ),
                  onTap: () {
                    showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            insetPadding: EdgeInsets.fromLTRB(_screenWidth / 16,
                                _screenH / 6, _screenWidth / 16, _screenH / 6),
                            backgroundColor:
                                Colors.redAccent[100].withOpacity(0.9),
                            elevation: 5,
                            title: Text(
                              "Before Start",
                              style: TextStyle(fontSize: _screenH / 30),
                            ),
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.pan_tool),
                                Text(
                                  "\n•Safty Glass!  \n•Place the plastic shield \n•Make sure when placing a sample into the grips that only the person placing the sample into the grip is in control of the handset",
                                  style: TextStyle(fontSize: _screenH / 45),
                                ),
                                SizedBox(
                                  height: _screenH / 50,
                                ),
                                FlatButton.icon(
                                    splashColor: Colors.white30,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                utm_instruction(),
                                          ));
                                    },
                                    icon: Icon(Icons.forward),
                                    label: Text("Forward")),
                                SizedBox(
                                  height: _screenH / 80,
                                ),
                                FlatButton.icon(
                                    splashColor: Colors.white30,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.backspace),
                                    label: Text("Cancel")),
                              ],
                            ),
                          );
                        });
                  }),
            ),
            Positioned(
              top: _screenH / 1.8,
              left: _screenWidth / 12,
              child: GestureDetector(
                onTap: send,
                child: Container(
                  width: _screenWidth / 2.9,
                  height: _screenH / 16,
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "Schedulling",
                    style: TextStyle(
                        fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 4)),
                ),
              ),
            ),
            Positioned(
              top: _screenH / 1.8,
              left: _screenWidth / 2 + 16,
              child: GestureDetector(
                child: Container(
                  width: _screenWidth / 2.9,
                  height: _screenH / 16,
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "Result",
                    style: TextStyle(
                        fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 4)),
                ),
              ),
            ),
            Positioned(
              top: _screenH / 1.56,
              left: _screenWidth / 2 + 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: EmailContent(
                              emailTo: "raylyu11@gmail.com",
                              locationOfEqup: "JHE 1st Floor Mechanical Lab",
                              nameOfEqup: "UTM")));
                },
                child: Container(
                  width: _screenWidth / 2.9,
                  height: _screenH / 16,
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "Manager",
                    style: TextStyle(
                        fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 4)),
                ),
              ),
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
                                    loc: "ML UTM Machine",
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
