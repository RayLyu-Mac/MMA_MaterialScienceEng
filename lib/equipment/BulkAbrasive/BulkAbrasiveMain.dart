import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'BulkAbrasiveDashB.dart';
import 'backG.dart';
import 'package:mma_mse/Instruction/abrasive_cutter/cutterMain.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:page_transition/page_transition.dart';

class BulkAbrasive_Main extends StatefulWidget {
  final String location;
  final String emailTo;
  BulkAbrasive_Main(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _BulkAbrasive_MainState createState() => _BulkAbrasive_MainState();
}

class _BulkAbrasive_MainState extends State<BulkAbrasive_Main> {
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
        title: Text("Bulk Abrasive Cutter"),
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
                    'Can find anything',
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
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/abc.jpg?raw=true"),
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
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 700),
                            child: automaticModeInterFaceButton(),
                            type: PageTransitionType.scale,
                            alignment: Alignment.topCenter));
                  }),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              buttonName: "Instruction",
              warnNote:
                  "•Ensure the sample is securely fastened \n•Cutting wheel is completely stoped before opening the canopy\n•Do not have the blade the touching the sample prior engaging the motor\n•Cut the sample slowly\n•Sample size should be smaller than 2 inches",
              pageTo: BulkAbraCutterInstru(),
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
                buttonName: "Background",
                pageTo: BulkAbrasiveCutter()),
            functionButtonMode(
                top: _screenH / 1.56,
                left: _screenWidth / 2 + 16,
                buttonName: "Manager",
                pageTo: EmailContent(
                    locationOfEqup: widget.location != null
                        ? widget.location
                        : "Not Specificed",
                    nameOfEqup: "Charpy Impact Tester",
                    emailTo: widget.emailTo != null
                        ? widget.emailTo
                        : "Please enter the email address!")),
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
