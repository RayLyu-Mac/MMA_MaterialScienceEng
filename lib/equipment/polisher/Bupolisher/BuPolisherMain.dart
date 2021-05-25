import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/Cutter/BuehlerCutter/BcutterMain.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/Instruction/Polisher/automatic%20Polisher/autoPolisherMain.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/Instruction/Polisher/buehlerPolisher/buePolisherMian.dart';

class BuehlerPolisherMain extends StatefulWidget {
  final String location;
  final String emailTo;
  BuehlerPolisherMain(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _BuehlerPolisherMainState createState() => _BuehlerPolisherMainState();
}

class _BuehlerPolisherMainState extends State<BuehlerPolisherMain> {
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
        title: Text("Buelher Polisher"),
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
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bmaPolisher.jpg?raw=true"),
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
                  "•Securely hold the sample as it could become a projectile if the polishing wheel catches the sample.",
              pageTo: BuehlerCutterInstru(),
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
                buttonName: "Dash Board Buttons",
                pageTo: BuehlerCutterInstru()),
            functionButtonMode(
                top: _screenH / 1.56,
                left: _screenWidth / 2 + 16,
                buttonName: "Manager",
                pageTo: EmailContent(
                    locationOfEqup: widget.location != null
                        ? widget.location
                        : "Not Specificed",
                    nameOfEqup: "Automatic Polisher",
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
                                    loc: "JHE 236 automatic polisher",
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
