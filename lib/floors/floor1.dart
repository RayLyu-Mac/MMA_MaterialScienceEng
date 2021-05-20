import 'package:flutter/material.dart';
import 'floor1/mech_lab.dart';
import '../Search/Search_page/search_main.dart';
import 'package:page_transition/page_transition.dart';
import '../QR_code/Data.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import '../equipment/saftyNoteText.dart';

class floor1 extends StatefulWidget {
  floor1({Key key}) : super(key: key);

  @override
  _floor1State createState() => _floor1State();
}

class _floor1State extends State<floor1> {
  String qr_result = "";
  double _screenWidth;
  double _screenH;
  double tra = 0.002;

  @override
  void goToPage(String qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: qr_data[qr_result], type: PageTransitionType.bottomToTop));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    Drawer _floor1sidemenu() => Drawer(
          child: ListView(children: <Widget>[
            DrawerHeader(
                child: Text(
              'JHE 1st Floor',
              style: TextStyle(fontSize: _screenH / 30),
            )),
            ExpansionTile(title: Text("Mechanical Lab"), children: [
              customListTile(
                name: "UTM Machine",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
              customListTile(
                name: "Rockwell",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
            ]),
            ExpansionTile(title: Text("Thermo Lab"), children: [
              customListTile(
                name: "UTM Machine",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
              customListTile(
                name: "Rockwell",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
            ])
          ]),
        );
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: search_main(),
                      type: PageTransitionType.scale,
                      alignment: Alignment.topCenter));
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 34,
            ),
          ),
          IconButton(
            onPressed: () async {
              String codeSanner = await BarcodeScanner.scan(); //barcode scnner
              setState(() {
                qr_result = codeSanner;
                goToPage(qr_result);
              });
            },
            icon: Icon(
              Icons.scanner,
              color: Colors.white,
              size: 34,
            ),
          )
        ],
        backgroundColor: Colors.black,
        title: Text("Floor I",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700)),
      ),
      drawer: Theme(
        data: ThemeData(
          canvasColor: Colors.white.withOpacity(0.8),
        ),
        child: Container(width: 220, child: _floor1sidemenu()),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(
              width: _screenWidth / 1.2, height: _screenH / 1.4),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/floors/floor1/floor1.PNG?raw=true"),
                  fit: BoxFit.cover)),
          child: Row(
            children: [
              SizedBox(
                width: 1,
              ),
              Column(
                children: [
                  GestureDetector(
                    child: Container(
                      color: Colors.black.withOpacity(tra),
                      height: _screenH / 9,
                      width: _screenWidth / 3.5,
                    ),
                    onTap: () {
                      warning(
                          pageTo: mech_lab(),
                          warning_note:
                              "•Safty Glasses \n•Closed-toe shoes with sock \n•Long pants \n•Lab Coats \n•No Contact Lens");
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: Container(
                      color: Colors.black.withOpacity(tra),
                      height: _screenH / 6,
                      width: _screenWidth / 3.5,
                    ),
                    onTap: () {
                      warning(
                          pageTo: mech_lab(),
                          warning_note:
                              "•Safty Glasses \n•Closed-toe shoes with sock \n•Long pants \n•Lab Coats \n•No Contact Lens");
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: Container(
                      color: Colors.black.withOpacity(tra),
                      height: _screenH / 6,
                      width: _screenWidth / 3.5,
                    ),
                    onTap: () {
                      showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return warning(
                                pageTo: mech_lab(),
                                warning_note:
                                    "•Safty Glasses \n•Closed-toe shoes with sock \n•Long pants \n•Lab Coats \n•No Contact Lens");
                          });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: Container(
                      color: Colors.black.withOpacity(tra),
                      height: _screenH / 5.2,
                      width: _screenWidth / 3.5,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: mech_lab(),
                              type: PageTransitionType.scale,
                              alignment: Alignment.centerLeft));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class customListTile extends StatelessWidget {
  const customListTile(
      {@required this.name, @required this.pageTo, @required this.fonts, key})
      : super(key: key);
  final String name;
  final Widget pageTo;
  final double fonts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
      child: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey[100]))),
          child: InkWell(
            splashColor: Colors.blue[100],
            onTap: () => {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: pageTo,
                      type: PageTransitionType.leftToRight))
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fonts),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          )),
    );
  }
}
