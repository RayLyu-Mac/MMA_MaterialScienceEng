import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room240.dart';
import 'roomBut.dart';
import 'package:mma_mse/floors/floor2/roomMain/239.dart';
import 'floor2/roomMain/240.dart';
import 'floor2/roomMain/239a.dart';
import 'floor2/roomMain/242.dart';
import 'floor2/roomMain/244.dart';
import 'floor2/roomMain/245.dart';
import 'floor2/roomMain/246A.dart';
import 'floor2/roomMain/246.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/SearchAll.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/wholeQR.dart';
import 'package:mma_mse/equipment/saftyNoteText.dart';
import 'package:mma_mse/Drawer.dart';
import 'floor2/roomMain/241.dart';
import 'package:permission_handler/permission_handler.dart';

class floor2 extends StatefulWidget {
  final bool safty;
  final bool eye;
  final bool fire;
  final bool visitFromOhter;
  floor2(
      {@optionalTypeArgs this.eye,
      @optionalTypeArgs this.safty,
      @optionalTypeArgs this.fire,
      @optionalTypeArgs this.visitFromOhter,
      Key key})
      : super(key: key);

  @override
  _floor2State createState() => _floor2State();
}

class _floor2State extends State<floor2> {
  double _screenWidth;
  double _screenH;
  double adjust = 1;
  double saftyI = -1;

  @override
  void goToPage(qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: to[qr_result], type: PageTransitionType.bottomToTop));
  }

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

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.96;

      adjust = 0.9;
    }
    return Scaffold(
      backgroundColor: Colors.grey[200].withOpacity(0.9),
      appBar: AppBar(
        actions: [
          IconButton(
              padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
              iconSize: 32,
              onPressed: () {
                setState(() {
                  saftyI = saftyI * -1;
                });
              },
              icon: Icon(FontAwesomeIcons.exchangeAlt)),
          IconButton(
              padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
              iconSize: 32,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(FontAwesomeIcons.timesCircle))
        ],
        title: Text(
          "JHE Floor II",
          style:
              TextStyle(fontSize: _screenH / 33, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: standardDrawer(header: "JHE Floor II"),
      body: Stack(
        children: [
          widget.eye || saftyI > 0
              ? roomButton(
                  left: _screenWidth / 10,
                  top: _screenH / 35,
                  length: _screenH / 15,
                  width: _screenWidth / 3,
                  backC: Colors.greenAccent[100].withOpacity(0.8),
                  detailTitle: "Exit",
                  details: "Emergency Exit for JHE Floor II",
                  icon: Icons.exit_to_app_rounded,
                )
              : roomButton(
                  left: _screenWidth / 10,
                  top: _screenH / 35,
                  length: _screenH / 15,
                  width: _screenWidth / 3,
                  backC: Colors.grey[800],
                  name: "Stairs"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 9,
              length: _screenH / 6,
              width: _screenWidth / 3,
              backC: Colors.grey[800],
              name: "243"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 3.4,
              length: _screenH / 12,
              width: _screenWidth / 3,
              titleIcon: FontAwesomeIcons.microscope,
              pageTo: warning(
                pageTo: room242Main(),
                warning_note:
                    "1. Safety Glasses\n2. Closed Toe Shoes\n3. Long Pants (No Shorts)\n4. Wearing Protection (optional)",
              ),
              name: "242"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 2.5,
              length: _screenH / 12,
              width: _screenWidth / 3,
              titleIcon: FontAwesomeIcons.microscope,
              pageTo: room241Main(),
              name: "241"),
          widget.eye || saftyI > 0
              ? Positioned(
                  left: _screenWidth / 13,
                  top: _screenH / 2.05,
                  child: Container(
                    width: _screenWidth / 1.8,
                    height: _screenH / 9,
                    child: Row(
                      children: [
                        roomButton(
                          length: _screenH / 9.5,
                          width: _screenWidth / 5.5,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.remove_red_eye_rounded,
                          detailTitle: "Room 240: Eye shower",
                          pageTo: room240LayO(
                            eye: true,
                          ),
                          details: "Emergency eye shower when chemical spills",
                        ),
                        SizedBox(
                          width: _screenWidth / 35,
                        ),
                        roomButton(
                          detailTitle: "Room 240: Chemical Shower",
                          details: "Emergency body shower when chemical spills",
                          length: _screenH / 9.5,
                          pageTo: room240LayO(
                            eye: true,
                          ),
                          width: _screenWidth / 5.5,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.shower_rounded,
                        )
                      ],
                    ),
                  ))
              : roomButton(
                  left: _screenWidth / 10,
                  top: _screenH / 2,
                  length: _screenH / 12,
                  width: _screenWidth / 3,
                  pageTo: room240(),
                  titleIcon: FontAwesomeIcons.microscope,
                  name: "240"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.66,
              length: _screenH / 7,
              width: _screenWidth / 3,
              titleIcon: FontAwesomeIcons.microscope,
              pageTo: warning(
                pageTo: room239Main(),
                warning_note:
                    "•No PPE required\n•No food or drink allowed in this room",
              ),
              name: "239"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.3,
              length: _screenH / 12,
              width: _screenWidth / 3,
              backC: Colors.grey[800],
              titleIcon: FontAwesomeIcons.briefcase,
              name: "238"),
          roomButton(
              left: _screenWidth / 6,
              top: _screenH / 1.66,
              length: _screenH / 20,
              width: _screenWidth / 3.7,
              titleIcon: FontAwesomeIcons.microscope,
              fontsize: 18,
              elevation: 4,
              pageTo: room239AMain(),
              name: "239A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 35,
              length: _screenH / 10,
              width: _screenWidth / 3,
              titleIcon: FontAwesomeIcons.microscope,
              pageTo: warning(
                pageTo: room244Main(),
                warning_note:
                    "1. Safety glasses\n2. Thermal gloves\n3. Tongs to handle hot samples\n4. Closed toe shoes with socks\n5. Long pants(No shorts)\n6. Face shield\n7. Aluminized hear resistant jacket",
              ),
              name: "244"),
          widget.fire || saftyI > 0
              ? roomButton(
                  left: _screenWidth / 2.05,
                  top: _screenH / 30,
                  length: _screenH / 13,
                  width: _screenWidth / 8.5,
                  icon: Icons.fire_extinguisher,
                  backC: Colors.redAccent[100],
                  details: "Emergency for fire situation",
                  detailTitle: "Fire Extinguisher",
                )
              : Positioned(
                  left: _screenWidth / 1.94,
                  top: _screenH / 35,
                  child: Container()),
          widget.fire || saftyI > 0
              ? roomButton(
                  detailTitle: "Fire Extinguisher",
                  details: "Emergency for fire situation",
                  left: _screenWidth / 2.05,
                  top: _screenH / 6.2,
                  backC: Colors.redAccent[100],
                  length: _screenH / 13,
                  width: _screenWidth / 8.5,
                  icon: Icons.fire_extinguisher,
                )
              : Positioned(
                  left: _screenWidth / 1.94,
                  top: _screenH / 35,
                  child: Container()),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 7,
              length: _screenH / 9,
              width: _screenWidth / 3,
              titleIcon: FontAwesomeIcons.microscope,
              pageTo: warning(
                pageTo: room245Main(),
                warning_note:
                    "1. Safety Glasses\n2. Closed Toe Shoes\n3. Long Pants (No Shorts)\n4. Lab Coat (optional)\n5. No Contact Lens",
              ),
              name: "245"),
          widget.eye || saftyI > 0
              ? Positioned(
                  left: _screenWidth / 1.72,
                  top: _screenH / 3.75,
                  child: Container(
                    width: _screenWidth / 1.8,
                    height: _screenH / 9,
                    child: Row(
                      children: [
                        roomButton(
                          length: _screenH / 9.5,
                          width: _screenWidth / 5.5,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.remove_red_eye_rounded,
                          pageTo: room246AMain(),
                          detailTitle: "Room 246A: Eye shower",
                          details: "Emergency eye shower when chemical spills",
                        ),
                        SizedBox(
                          width: _screenWidth / 35,
                        ),
                        roomButton(
                          length: _screenH / 9.5,
                          width: _screenWidth / 5.5,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.shower_rounded,
                          pageTo: room246AMain(),
                          detailTitle: "Room 246A: Chemical Shower",
                          details: "Emergency body shower when chemical spills",
                        )
                      ],
                    ),
                  ))
              : roomButton(
                  left: _screenWidth / 1.6,
                  top: _screenH / 3.73,
                  length: _screenH / 9,
                  width: _screenWidth / 3,
                  titleIcon: FontAwesomeIcons.microscope,
                  pageTo: warning(
                    pageTo: room246Main(),
                    warning_note:
                        "1. Safety Glasses\n2. Closed Toe Shoes\n3. Long Pants (No Shorts)\n4. Lab Coat (optional)\n5. No Contact Lens\n6. Nitrile Gloves Must be worn for Etching",
                  ),
                  name: "246/A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 2.54,
              length: _screenH / 9,
              width: _screenWidth / 3,
              titleIcon: FontAwesomeIcons.microscope,
              pageTo: room246AMain(),
              name: "246B"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 1.92,
              length: _screenH / 9,
              width: _screenWidth / 3,
              backC: Colors.grey[800],
              name: "247"),
          saftyI > 0
              ? Positioned(
                  left: _screenWidth / 1.72,
                  top: _screenH / 1.6,
                  child: Container(
                      width: _screenWidth / 2.5,
                      height: _screenH / 4,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: _screenWidth / 25,
                              ),
                              roomButton(
                                length: _screenH / 10,
                                width: _screenWidth / 6,
                                backC: Colors.redAccent[100].withOpacity(0.8),
                                icon: FontAwesomeIcons.firstAid,
                                detailTitle: "Room 248: First Aid Kit",
                                details: "QRS kit for any emergency",
                              ),
                              SizedBox(
                                height: _screenWidth / 55,
                              ),
                              roomButton(
                                length: _screenH / 10,
                                width: _screenWidth / 6,
                                backC: Colors.redAccent[100].withOpacity(0.8),
                                icon: FontAwesomeIcons.burn,
                                detailTitle: "Room 248: Burn Kit",
                                details: "QRS for burning situation",
                              )
                            ],
                          ),
                          SizedBox(
                            width: _screenWidth / 40,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: _screenH / 60,
                              ),
                              roomButton(
                                length: _screenH / 4.5,
                                width: _screenWidth / 5,
                                fontsize: 22,
                                backC: Colors.redAccent[100].withOpacity(0.8),
                                detailsFontS: 16,
                                detailsTiFontS: 25,
                                detailTitle: "Equipment Manager Contact Info",
                                details:
                                    "Ed McCaffery Ext:24985\nDoug Culley: Ext 24106\nXiaogang Li:Ext 21881",
                                name: "Contact Info",
                              )
                            ],
                          )
                        ],
                      )))
              : roomButton(
                  left: _screenWidth / 1.6,
                  top: _screenH / 1.55,
                  length: _screenH / 4.7,
                  width: _screenWidth / 3,
                  backC: Colors.grey[800],
                  name: "248"),
          Positioned(
              top: _screenH / 1.23,
              left: _screenWidth / 1.4,
              child: widget.visitFromOhter != null
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                          border: Border.all(width: 5, color: Colors.blueGrey)),
                      height: _screenH / 15,
                      width: _screenWidth / 4,
                      child: Text("Swipe to see Floor III"),
                    )
                  : Container()),
          floationPanel(
              button: [
                Icons.search,
                Icons.qr_code_scanner,
              ],
              animationTime: 550,
              buttonP: [EqupSearch(), scanQR]),
        ],
      ),
    );
  }

  Future scanQR() async {
    await Permission.camera.request();
    String codeSanner = await scanner.scan(); //barcode scnner
    setState(() {
      goToPage(codeSanner);
    });
  }
}
