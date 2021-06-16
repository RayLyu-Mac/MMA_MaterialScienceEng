import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'package:mma_mse/Search/SearchAll.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:mma_mse/Search/extramenu.dart';

class EqubPageMode extends StatefulWidget {
  final String title;
  final String intro;
  final String img;
  final String warnNote;
  final String warnVido;
  final Widget instruction;
  final Widget theory;
  final Color backC;
  final bool dash;
  EqubPageMode(
      {Key key,
      @required this.title,
      @optionalTypeArgs this.dash,
      @required this.backC,
      @optionalTypeArgs this.theory,
      @required this.instruction,
      @optionalTypeArgs this.warnNote,
      @optionalTypeArgs this.warnVido,
      @required this.img,
      @required this.intro,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String location;
  final String emailTo;
  @override
  _EqubPageModeState createState() => _EqubPageModeState();
}

class _EqubPageModeState extends State<EqubPageMode> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  void goToPage(qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: to[qr_result], type: PageTransitionType.bottomToTop));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backC,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                ),
                Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 1.5, height: _screenWidth / 4),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assest/logocolor.png"))),
                )
              ],
            )),
            floorMenu(),
            extraMenu()
          ],
        ),
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
                    widget.intro,
                    style: TextStyle(
                        fontSize: _screenH / 55, fontWeight: FontWeight.bold),
                  )),
            ),
            Positioned(
              top: _screenH / 45,
              left: _screenWidth / 35,
              child: GestureDetector(
                child: Container(
                    constraints: BoxConstraints.expand(
                        width: _screenWidth / 2.3, height: _screenH / 1.9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 6,
                        color: Colors.grey[200],
                      ),
                      image: DecorationImage(
                          image: NetworkImage(widget.img), fit: BoxFit.cover),
                    )),
              ),
            ),
            widget.warnNote != null
                ? functionButtonMode(
                    top: _screenH / 1.5,
                    left: _screenWidth / 12,
                    buttonName: "Instruction",
                    warnNote: widget.warnNote,
                    pageTo: widget.instruction)
                : functionButtonMode(
                    top: _screenH / 1.56,
                    left: _screenWidth / 12,
                    buttonName: "Instruction",
                    warnV: widget.warnVido,
                    pageTo: widget.instruction),
            functionButtonMode(
              top: _screenH / 1.7,
              left: _screenWidth / 12,
              buttonName: "Schedulling",
              url: _launchURL,
            ),
            widget.theory != null
                ? functionButtonMode(
                    top: _screenH / 1.7,
                    left: _screenWidth / 2 + 16,
                    buttonName:
                        widget.dash == null ? "Theory" : "Dash Board Button",
                    pageTo: widget.theory)
                : functionButtonMode(
                    top: _screenH / 1.7,
                    left: _screenWidth / 2 + 16,
                    buttonName: "Theory",
                    pageTo: workingInProg()),
            functionButtonMode(
                top: _screenH / 1.5,
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
            floationPanel(
                button: [Icons.search, Icons.qr_code_scanner, Icons.note_add],
                animationTime: 550,
                buttonP: [
                  EqupSearch(),
                  scanQR,
                  user_note(
                    loc: widget.location ?? "??",
                    themem_color: Colors.red[100],
                  )
                ]),
          ],
        ),
      ),
    );
  }

  scanQR() async {
    String codeSanner = await BarcodeScanner.scan(); //barcode scnner
    setState(() {
      goToPage(codeSanner);
    });
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
