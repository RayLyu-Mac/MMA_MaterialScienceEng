import 'dart:math';

import 'package:flutter/material.dart';
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
  List<List> whole = [];
  List<String> questionB = ["Property", "Toxicity", "PPE"];
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
      _screenH = _screenH * 0.85;
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
    }
    whole.add(chemP);
    whole.add(toxi);
    whole.add(ppe);
  }

  @override
  Widget build(BuildContext context) {
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
                itemCount: 5,
                itemExtent: 395,
                controller: controller,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> tiles = {
                    "Property": result[acids].chemicalP,
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
                        Positioned(top: 7, left: 10, child: Text(partName)),
                        index == 4
                            ? Positioned(
                                top: 30,
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
                            : Positioned(
                                top: 20,
                                left: 5,
                                child: Container(
                                  width: _screenWidth / 1.2,
                                  child: Text(prop),
                                ))
                      ],
                    ),
                  );
                }),
          ),
        Scaffold(
            appBar: AppBar(
              title: Text("Short Quiz before Proceeding"),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  for (var ii = 0; ii < qs.length; ii++)
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      height: _screenH / 1.2,
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
                            height: _screenH / 1.4,
                            child: ListView.separated(
                                itemCount: 3,
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                separatorBuilder: (context, index) {
                                  return Divider(
                                    height: 10,
                                  );
                                },
                                itemBuilder: (
                                  BuildContext context,
                                  int index,
                                ) {
                                  return Container(
                                    color:
                                        settleColor(_selectedIndex, index, ii),
                                    child: ListTile(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.red, width: 3),
                                      ),
                                      onTap: () {
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
                                      title: Text(whole[qs[ii]][index]),
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
                            height: _screenH / 12,
                            width: _screenWidth / 6,
                            child: answs[jj]
                                ? Text(code[jj].toString())
                                : Container(),
                            decoration: BoxDecoration(color: Colors.grey[100]),
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
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.grey[100];
    }
  }
}
