import 'package:flutter/material.dart';
import 'phaseDData.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'zoomIn.dart';
import 'package:mma_mse/Search/tools/toolsMain.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhaseDiag extends StatefulWidget {
  PhaseDiag({Key key}) : super(key: key);

  @override
  _PhaseDiagState createState() => _PhaseDiagState();
}

class _PhaseDiagState extends State<PhaseDiag> {
  double _screenWidth;
  double _screenH;
  double adjust;

  List tiles = [];
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

  @override
  void initState() {
    super.initState();
    for (var j = 0; j < result.length; j++) {
      tiles.add(result[j].title);
    }
  }

  List<testdetailData> result = testdetailData().detailL();
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    Drawer tensileResult() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Phase Diagram Quick Check")),
              for (var j = 0; j < result.length; j++)
                ScrollcustomListTile(
                  name: result[j].title,
                  pageTo: j,
                  fonts: 13,
                  controller: controller,
                  offset: 385,
                ),
              Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 8, height: _screenH / 10),
                child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: const Duration(milliseconds: 500),
                              child: toolMain(),
                              type: PageTransitionType.leftToRight));
                    },
                    icon: Icon(FontAwesomeIcons.signOutAlt),
                    color: Colors.grey[200],
                    label: Text(
                      "  Back to Tools",
                      style: TextStyle(
                          fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        );

    return Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Phase Diagram Check"),
        ),
        drawer: Container(
          width: _screenWidth / 1.7,
          child: tensileResult(),
        ),
        body: ListView.builder(
            itemCount: result.length,
            itemExtent: 475,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  transition(ZoomInPhaseD(imgPD: result[index].addOnImg));
                },
                child: Card(
                    color: Colors.white.withOpacity(0.7),
                    semanticContainer: true,
                    margin: EdgeInsets.fromLTRB(21, 16, 21, 8),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    clipBehavior: Clip.antiAlias,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              result[index].title,
                              style: TextStyle(
                                  fontSize: _screenH / 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: _screenH / 30,
                          ),
                          Container(
                              child: Column(
                            children: [
                              Container(
                                  child: Image.network(
                                result[index].addOnImg,
                                fit: BoxFit.fitWidth,
                                width: _screenWidth / 1.15,
                              )),
                              result[index].addonImgLft != null
                                  ? Container(
                                      child: Container(
                                      width: _screenWidth / 2.2,
                                      height: _screenH / 20,
                                      child: GestureDetector(
                                        onTap: () {
                                          transition(ZoomInPhaseD(
                                              imgPD:
                                                  result[index].addonImgLft));
                                        },
                                      ),
                                    ))
                                  : Container(),
                              result[index].addonImgRht != null
                                  ? Container(
                                      width: _screenWidth / 2.2,
                                      height: _screenH / 20,
                                      child: GestureDetector(
                                        onTap: () {
                                          transition(ZoomInPhaseD(
                                              imgPD:
                                                  result[index].addonImgRht));
                                        },
                                      ),
                                    )
                                  : Container(),
                            ],
                          )),
                          Container(
                              width: _screenWidth / 1.2,
                              child: Text(
                                result[index].content,
                                style: TextStyle(
                                    fontSize: _screenH / 44,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )),
              );
            }));
  }

  transition(Widget pageTo) {
    Navigator.of(context).push(PageRouteBuilder(
        fullscreenDialog: true,
        transitionDuration: Duration(milliseconds: 800),
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return pageTo;
        },
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return FadeTransition(
              opacity:
                  animation, // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
              child: child);
        }));
  }
}
