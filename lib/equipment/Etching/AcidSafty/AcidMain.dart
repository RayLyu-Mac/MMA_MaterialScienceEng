import 'dart:math';
import 'package:mma_mse/Search/safty/ShowerWasher/ShowerMain.dart';
import 'package:mma_mse/equipment/safty sheet/MSDS.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/safty%20sheet/MSDSdata.dart';
import 'AcidData.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:mma_mse/Search/safty/Whims/WhimsMain.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/equipment/Etching/acidSafyFinal.dart';

class Aciddetail extends StatefulWidget {
  Aciddetail({Key key}) : super(key: key);

  @override
  _AciddetailState createState() => _AciddetailState();
}

class _AciddetailState extends State<Aciddetail> {
  double _screenWidth;
  double _screenH;
  double adjust;
  int q1;
  int q2;
  int c1;
  int c2;
  int q3;
  int c3;
  bool checked = false;
  Color bordC;

  List<int> qs = [];
  List<int> cs = [];
  List<String> chemN = [];
  List<String> chemP = [];
  List<String> toxi = [];
  List<String> ppe = [];
  List<String> physiP = [];
  List<List> whole = [];
  List<String> questionB = [
    "Chemical Property",
    "Toxicity",
    "PPE",
    "Physical Property"
  ];
  List<int> code = [12, 25, 19];
  List<bool> answs = [];
  bool choicea = false;
  bool choiceb = false;
  bool choicec = false;

  List<List> _selectedIndex = [
    [4, 3],
    [4, 3],
    [4, 3]
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.85;
    } else {
      adjust = 1;
    }
    qs = [q1, q2, q3];
    cs = [c1, c2, c3];
    answs = [choicea, choiceb, choicec];
  }

  List<testdetailData> result = testdetailData().detailL();
  @override
  void initState() {
    super.initState();
    var random = Random();
    q1 = random.nextInt(3);

    q2 = random.nextInt(3);
    c1 = random.nextInt(result.length);
    c2 = random.nextInt(result.length);
    c3 = random.nextInt(result.length);
    q3 = random.nextInt(result.length);
    for (var i = 0; i < result.length; i++) {
      chemN.add(result[i].chemName);
      chemP.add(result[i].chemicalP);
      toxi.add(result[i].toxic);
      ppe.add(result[i].ppe);
      physiP.add(result[i].physicalP);
    }
    whole.add(chemP);
    whole.add(toxi);
    whole.add(ppe);
    whole.add(physiP);
  }

  @override
  Widget build(BuildContext context) {
    String phyP =
        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/Acid/PhyP.jpg?raw=true";
    String chemPimg =
        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/Acid/chemP.jpg?raw=true";
    String ppeImg =
        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/Acid/PPE.png?raw=true";
    _onSelected(int index, int ii) {
      setState(() => _selectedIndex[ii][0] = index);
    }

    final ScrollController controller = ScrollController();
    final PageController pcontroller = PageController();
    return PageView(
      controller: pcontroller,
      children: [
        for (var acids = 0; acids < result.length; acids++)
          Scaffold(
            backgroundColor: Colors.redAccent[100],
            appBar: AppBar(
              title: Text(result[acids].chemName),
              backgroundColor: Colors.black,
            ),
            body: ListView.builder(
                itemCount: 6,
                itemExtent: 430,
                controller: controller,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> tiles = {
                    "Physical Property": result[acids].physicalP,
                    "Chemical Property": result[acids].chemicalP,
                    "Toxicity": result[acids].toxic,
                    "Preparation": result[acids].prep,
                    "PPE required": result[acids].ppe,
                    "WHIMS symbol": result[acids].whims
                  };
                  dynamic prop = tiles.values.toList()[index];
                  String partName = tiles.keys.toList()[index];
                  return Card(
                    color: Colors.white.withOpacity(0.7),
                    semanticContainer: true,
                    margin: EdgeInsets.fromLTRB(21, 16, 21, 8),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 12,
                            left: 10,
                            child: Text(partName,
                                style: TextStyle(
                                    fontSize: _screenH / 28,
                                    fontWeight: FontWeight.bold))),
                        index == 5
                            ? Positioned(
                                top: 50,
                                left: 5,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        for (var img = 0;
                                            img < prop.length;
                                            img++)
                                          Container(
                                            height: _screenH / 5,
                                            width: _screenWidth /
                                                1.2 /
                                                prop.length,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        prop[img]))),
                                          )
                                      ],
                                    ),
                                    SizedBox(
                                      height: _screenH / 40,
                                    ),
                                    FlatButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              PageTransition(
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  child: WhimsSymbols(),
                                                  type: PageTransitionType
                                                      .leftToRight));
                                        },
                                        icon: Icon(Icons.file_copy_rounded),
                                        label:
                                            Text("Check the whole WHIMS List"))
                                  ],
                                ))
                            : index == 3
                                ? Positioned(
                                    top: 40,
                                    left: 5,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: _screenWidth / 1.2,
                                          child: Text(
                                            prop,
                                            style: TextStyle(
                                                fontSize: _screenH / 35),
                                          ),
                                        ),
                                        SizedBox(
                                          height: _screenH / 30,
                                        ),
                                        Container(
                                          constraints: BoxConstraints.expand(
                                              width: _screenWidth / 1.6,
                                              height: _screenWidth / 7.7),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      _screenH / 16),
                                              border: Border.all(
                                                  color: Colors.grey[200],
                                                  width: 5)),
                                          child: FlatButton.icon(
                                              splashColor:
                                                  Colors.redAccent[100],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        _screenH / 16),
                                              ),
                                              color:
                                                  Colors.grey.withOpacity(0.7),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    PageTransition(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    500),
                                                        child:
                                                            ChemicalShowerEyeWasher(),
                                                        type: PageTransitionType
                                                            .rightToLeft));
                                              },
                                              icon: Icon(
                                                Icons.shower,
                                                color: Colors.white,
                                              ),
                                              label: Text(
                                                  "Eye wash & Chemical shower")),
                                        ),
                                        SizedBox(
                                          height: _screenH / 40,
                                        ),
                                        Container(
                                          constraints: BoxConstraints.expand(
                                              width: _screenWidth / 2.2,
                                              height: _screenWidth / 7.7),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      _screenH / 16),
                                              border: Border.all(
                                                  color: Colors.grey[200],
                                                  width: 5)),
                                          child: FlatButton.icon(
                                              splashColor:
                                                  Colors.redAccent[100],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        _screenH / 16),
                                              ),
                                              color:
                                                  Colors.grey.withOpacity(0.7),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    PageTransition(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    500),
                                                        child:
                                                            SearchListExample(),
                                                        type: PageTransitionType
                                                            .rightToLeft));
                                              },
                                              icon: Icon(Icons.search),
                                              label: Text("MSDS Data Sheet")),
                                        )
                                      ],
                                    ))
                                : Positioned(
                                    top: 40,
                                    left: 5,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: _screenWidth / 1.2,
                                          child: Text(
                                            prop,
                                            style: TextStyle(
                                                fontSize: _screenH / 35),
                                          ),
                                        ),
                                        SizedBox(
                                          height: _screenH / 20,
                                        ),
                                        Container(
                                            width: _screenWidth / 1.5,
                                            height: _screenH / 4.3,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(index ==
                                                            0
                                                        ? chemPimg
                                                        : index == 1
                                                            ? phyP
                                                            : index == 4
                                                                ? ppeImg
                                                                : "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/Acid/body.jpg?raw=true")))),
                                      ],
                                    ))
                      ],
                    ),
                  );
                }),
          ),
        Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Short Quiz before Proceeding",
                style: TextStyle(fontFamily: "Odibee Sans"),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  for (var ii = 0; ii < qs.length; ii++)
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      height: _screenH / 1.32,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: _screenWidth / 1.2,
                            height: _screenH / 18,
                            child: Text(
                              "Question #" +
                                  (ii + 1).toString() +
                                  " Whats the " +
                                  questionB[qs[ii]] +
                                  " for " +
                                  chemN[cs[ii]],
                              style: TextStyle(
                                  fontSize: _screenH / 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 3)),
                            height: _screenH / 1.5,
                            child: ListView.separated(
                                itemCount: 3,
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                separatorBuilder: (context, index) {
                                  return Divider(
                                    height: 12,
                                  );
                                },
                                itemBuilder: (
                                  BuildContext context,
                                  int index,
                                ) {
                                  return Container(
                                    height: _screenH / 5,
                                    color:
                                        settleColor(_selectedIndex, index, ii),
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.blueAccent[100],
                                            width: 3),
                                      ),
                                      onPressed: () {
                                        _onSelected(index, ii);
                                        if (index == cs[ii]) {
                                          setState(() {
                                            _selectedIndex[ii][1] = 1;
                                            answs[ii] = true;
                                          });
                                        } else {
                                          setState(() {
                                            _selectedIndex[ii][1] = 0;
                                          });
                                        }
                                      },
                                      child: Text(whole[qs[ii]][index]),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  Text("The code for the shred is:"),
                  Container(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 4, 5, 20, 5),
                    child: Row(
                      children: [
                        for (var jj = 0; jj < 3; jj++)
                          Container(
                            padding: EdgeInsets.fromLTRB(_screenWidth / 20,
                                _screenH / 45, 15, _screenH / 55),
                            height: _screenH / 12,
                            width: _screenWidth / 6,
                            child: answs[jj]
                                ? Text(
                                    code[jj].toString(),
                                    style: TextStyle(
                                        fontSize: _screenH / 33,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Sigmar One"),
                                  )
                                : Container(),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(
                                    color: Colors.blueGrey[800], width: 2)),
                          ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }

  settleColor(List select, int index, int ii) {
    if (select[ii][0] == index) {
      if (select[ii][1] == 1) {
        return Colors.lightGreenAccent;
      } else {
        return Colors.redAccent[100];
      }
    } else {
      return Colors.grey[100];
    }
  }
}
