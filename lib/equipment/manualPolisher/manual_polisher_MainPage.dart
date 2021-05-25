import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:mma_mse/Instruction/manualPolisher/manualpolisherinstructionMain.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/LogInRequest/logInRequest.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';

class manual_polisher extends StatefulWidget {
  manual_polisher({Key key}) : super(key: key);

  @override
  _manual_polisherState createState() => _manual_polisherState();
}

class _manual_polisherState extends State<manual_polisher> {
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
        title: Text('Manual Polisher'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            top: _screenH / 45,
            left: _screenWidth / 2 + 2,
            child: Text(
              'Introduction',
              style: TextStyle(
                  fontSize: _screenH / 30, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: _screenH / 16,
            left: _screenWidth / 2 + 2,
            child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.2, height: 280),
                child: Text(
                  'To remove any mechanical damage from the grinding steps.  To ensure that the sample has a mirror finished that there are no scratches on the surface.  The finished sample is ready to be etched and viewed under a microscope to observe the microstructure. ).',
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
                          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
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
                    barrierDismissible: false,
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
                                              manual_polisher_instruction(),
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
                          ));
                    });
              },
            ),
          ), ////
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
                            nameOfEqup: "Manual Polisher")));
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
                                  loc: "Manual Polisher",
                                  themem_color: Colors.red[100],
                                )));
                  }))
        ]), ////
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
