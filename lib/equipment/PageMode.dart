import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/wholeQR.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';
import 'package:mma_mse/Drawer.dart';

class EqubPageMode extends StatefulWidget {
  final String title;
  final String? intro;
  final String img;
  final String? warnNote;
  final String? warnVido;
  final Widget instruction;
  final Widget? theory;
  final Color backC;
  final String? dash;
  final IconData? extraIcon;
  final Widget? extraPage;
  final String? toolTip;
  final double? fontSize;
  final bool? oritation;
  EqubPageMode(
      {Key? key,
      required this.title,
      this.oritation = true,
      this.fontSize,
      this.toolTip,
      this.extraIcon,
      this.extraPage,
      this.dash,
      required this.backC,
      this.theory,
      required this.instruction,
      this.warnNote = "None",
      this.warnVido = "None",
      required this.img,
      required this.intro,
      this.emailTo,
      this.location})
      : super(key: key);
  final String? location;
  final String? emailTo;
  @override
  _EqubPageModeState createState() => _EqubPageModeState();
}

class _EqubPageModeState extends State<EqubPageMode> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 1;

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
            child: qr_pageTo[qr_result]!,
            type: PageTransitionType.bottomToTop));
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 1.7) {
      adjust = 0.86;
    }
    return Scaffold(
      backgroundColor: widget.backC,
      appBar: AppBar(
        toolbarHeight: _screenH / 10,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: _screenWidth / 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
              iconSize: 32,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(FontAwesomeIcons.timesCircle))
        ],
      ),
      drawer: standardDrawer(header: widget.title),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: _screenH / 45,
                left: _screenWidth / 1.95,
                child: Text(
                  'Introduction',
                  style: TextStyle(
                      fontSize: _screenWidth / 15, fontWeight: FontWeight.bold),
                )),
            Positioned(
              top: _screenH / 13,
              left: _screenWidth / 1.95,
              child: Container(
                height: _screenH / 2.2,
                width: _screenWidth / 2.3,
                child: SingleChildScrollView(
                    child: Text(
                  widget.intro ?? "None",
                  style: TextStyle(
                      fontSize:
                          _screenWidth * 2.3 / (widget.fontSize ?? 55 / adjust),
                      fontWeight: FontWeight.bold),
                )),
              ),
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
                      color: Colors.grey.shade200,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(widget.img), fit: BoxFit.cover),
                  )),
            ),
            widget.warnNote != "None"
                ? functionButtonMode(
                    top: _screenH / 1.33,
                    left: _screenWidth / 12,
                    buttonName: "Instruction",
                    warnNote: widget.warnNote!,
                    pageTo: widget.instruction)
                : functionButtonMode(
                    top: _screenH / 1.33,
                    left: _screenWidth / 12,
                    buttonName: "Instruction",
                    warnV: widget.warnVido!,
                    pageTo: widget.instruction),
            functionButtonMode(
              top: _screenH / 1.51,
              left: _screenWidth / 12,
              buttonName: "Schedulling",
              url: _launchURL,
            ),
            functionButtonMode(
                top: _screenH / 1.51,
                left: _screenWidth / 2 + 16,
                buttonName: widget.dash ?? "Theory",
                pageTo: widget.theory ?? workingInProg()),
            functionButtonMode(
                top: _screenH / 1.33,
                left: _screenWidth / 2 + 16,
                buttonName: "Manager",
                pageTo: workingInProg()),
            Positioned(
                top: _screenH / 1.8,
                left: _screenWidth / 1.5,
                child: Row(
                  children: [
                    widget.extraPage != null
                        ? IconButton(
                            tooltip: widget.toolTip,
                            iconSize: _screenH / 17,
                            icon: Icon(widget.extraIcon),
                            color: Colors.redAccent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: widget.extraPage!,
                                      type: PageTransitionType.bottomToTop));
                            })
                        : Container(),
                    IconButton(
                        tooltip: "Safety Sheet",
                        iconSize: _screenH / 17,
                        onPressed: _Safety,
                        icon: Icon(FontAwesomeIcons.fileArchive))
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Future scanQR() async {
    await Permission.camera.request();
    String? codeSanner = await scanner.scan(); //barcode scnner
    setState(() {
      goToPage(codeSanner);
    });
  }
}

_launchURL() async {
  final url = Uri.parse('https://msebooking.mcmaster.ca/');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_Safety() async {
  const url =
      'https://docs.google.com/forms/d/e/1FAIpQLSfxc4bqsI4koNBQBCsR02siKhGX-UFDzdNW8_LfxYkVoGuy3Q/viewform?usp=sf_link';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
