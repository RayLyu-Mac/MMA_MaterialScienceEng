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
  Color bordC;
  List<String> chemN = [];
  List<String> chemP = [];
  List<String> toxi = [];
  List<String> ppe = [];
  List<List> whole = [];
  List<String> questionB = ["Property", "Toxicity", "PPE"];

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
          body: Column(
            children: [
              Container(
                width: _screenWidth / 1.2,
                height: _screenH / 6,
                child: Text("Whats the " + questionB[q1] + " for " + chemN[c1]),
              ),
              Container(
                height: _screenH / 1.5,
                child: ListView.builder(
                    itemCount: 3,
                    itemExtent: _screenH / 4,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        highlightColor: bordC ?? Colors.grey,
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        onTap: () {
                          if (index == c1) {
                            setState(() {
                              bordC = Colors.greenAccent;
                              print("great");
                            });
                          } else {
                            setState(() {
                              bordC = Colors.redAccent;
                              print("bad");
                            });
                          }
                        },
                        splashColor: Colors.lightBlueAccent,
                        child: Text(whole[q1][index]),
                      );
                    }),
              )
            ],
          ),
        )
      ],
    );
  }
}
