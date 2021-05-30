import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/Dash_borad_button.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/Instruction/icp_instruction/icpMain.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/Instruction/rockwell/digital/digiRWMain.dart';
import 'package:mma_mse/Instruction/Cutter/BuehlerCutter/BcutterMain.dart';
import 'DashBorad.dart';

class BuehlerCutterMain extends StatefulWidget {
  BuehlerCutterMain(
      {Key key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String location;
  final String emailTo;
  @override
  _BuehlerCutterMainState createState() => _BuehlerCutterMainState();
}

class _BuehlerCutterMainState extends State<BuehlerCutterMain> {
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
        title: Text("Buehler Precision Cutter"),
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
                    'A microscope that can observe uneven surfaces and 3D objects with clear images thanks to its large depth of field and long observation distance. Together with a model that uses a full control system to provide high-resolution observation that rivals an SEM, this lineup includes entry models equipped with frequently used functions. Dedicated lenses that bring out the best performance of microscopes are also available.',
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
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bcutter.jpg?raw=true"),
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
                    "When using the Precision Cutter although there is a safety shield; safety glasses are required.\nPlease be familiar with the parameter you are going to set",
                pageTo: BuehlerCutterInstru()),
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
                pageTo: BueDashBoard()),
            functionButtonMode(
                top: _screenH / 1.56,
                left: _screenWidth / 2 + 16,
                buttonName: "Manager",
                pageTo: EmailContent(
                  emailTo: widget.emailTo != null
                      ? widget.emailTo
                      : "Please enter the email",
                  locationOfEqup:
                      widget.location != null ? widget.location : "NUll",
                  nameOfEqup: "Buehler Precision Cutter",
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
                                    loc: "Buehler Precision Cutter",
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
