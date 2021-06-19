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
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';

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
  final IconData extraIcon;
  final Widget extraPage;
  final String toolTip;
  EqubPageMode(
      {Key key,
      @required this.title,
      @optionalTypeArgs this.toolTip,
      @optionalTypeArgs this.extraIcon,
      @optionalTypeArgs this.extraPage,
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
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

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
        toolbarHeight: _screenH / 10,
        title: TextLiquidFill(
          text: widget.title,
          loadDuration: Duration(milliseconds: 1650),
          waveDuration: Duration(
            milliseconds: 850,
          ),
          waveColor: widget.backC,
          textStyle: TextStyle(
            fontSize: _screenH / 26,
            fontWeight: FontWeight.w900,
          ),
        ),
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
                      fontSize: _screenH / 30, fontWeight: FontWeight.w800),
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
            extraMenu(),
            contact()
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: _screenH / 45,
                left: _screenWidth / 1.9,
                child: Text(
                  'Introduction',
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                )),
            Positioned(
              top: _screenH / 16,
              left: _screenWidth / 1.95,
              child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.2, height: _screenH / 1.85),
                  child: Text(
                    widget.intro,
                    style: TextStyle(
                        fontSize: _screenH / 55, fontWeight: FontWeight.bold),
                  )),
            ),
            Positioned(
              top: _screenH / 55,
              left: _screenWidth / 55,
              child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.1, height: _screenH / 1.85),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 6,
                      color: Colors.grey[200],
                    ),
                    image: DecorationImage(
                        image: NetworkImage(widget.img), fit: BoxFit.cover),
                  )),
            ),
            widget.warnNote != null
                ? functionButtonMode(
                    top: _screenH / 1.4,
                    left: _screenWidth / 12,
                    buttonName: "Instruction",
                    warnNote: widget.warnNote,
                    pageTo: widget.instruction)
                : functionButtonMode(
                    top: _screenH / 1.4,
                    left: _screenWidth / 12,
                    buttonName: "Instruction",
                    warnV: widget.warnVido,
                    pageTo: widget.instruction),
            functionButtonMode(
              top: _screenH / 1.6,
              left: _screenWidth / 12,
              buttonName: "Schedulling",
              url: _launchURL,
            ),
            widget.theory != null
                ? functionButtonMode(
                    top: _screenH / 1.6,
                    left: _screenWidth / 2 + 16,
                    buttonName:
                        widget.dash == null ? "Theory" : "Dash Board Button",
                    pageTo: widget.theory)
                : functionButtonMode(
                    top: _screenH / 1.6,
                    left: _screenWidth / 2 + 16,
                    buttonName: "Theory",
                    pageTo: workingInProg()),
            functionButtonMode(
                top: _screenH / 1.4,
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
              top: _screenH / 2.1,
              left: _screenWidth / 1.2,
              child: widget.extraPage != null
                  ? IconButton(
                      tooltip: widget.toolTip,
                      iconSize: _screenH / 17,
                      icon: Icon(widget.extraIcon),
                      color: Colors.redAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: widget.extraPage,
                                type: PageTransitionType.bottomToTop));
                      })
                  : Container(),
            ),
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
