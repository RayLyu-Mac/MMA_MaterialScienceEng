import 'package:flutter/material.dart';
import 'constantData.dart';
import 'package:mma_mse/customTileScroll.dart';

class MatlsConstant extends StatefulWidget {
  MatlsConstant({Key key}) : super(key: key);

  @override
  _MatlsConstantState createState() => _MatlsConstantState();
}

class _MatlsConstantState extends State<MatlsConstant> {
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
              DrawerHeader(child: Text("Constant Table")),
              for (var j = 0; j < result.length; j++)
                ScrollcustomListTile(
                  name: result[j].title,
                  pageTo: j,
                  fonts: 12,
                  controller: controller,
                  offset: 435,
                )
            ],
          ),
        );

    return Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Matls Course Constant",
            style: TextStyle(fontSize: _screenH / 40),
          ),
        ),
        drawer: Container(
          width: _screenWidth / 1.4,
          child: tensileResult(),
        ),
        body: ListView.builder(
            itemCount: result.length,
            itemExtent: 435,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
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
                        top: 5.0,
                        left: 10.0,
                        child: Text(
                          result[index].title,
                          style: TextStyle(
                              fontSize: result[index].titleFontsize ?? 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                          top: 40,
                          left: _screenWidth / (result[index].picLeft ?? 60),
                          child: Image.network(
                            result[index].addOnImg,
                            fit: BoxFit.fitWidth,
                            height: 225,
                          )),
                      Positioned(
                          top: 275,
                          left: 5,
                          child: Container(
                              width: _screenWidth / 1.2,
                              child: Text(
                                result[index].content,
                                style: TextStyle(
                                    fontSize: result[index].contentFontsize ??
                                        _screenH / 45),
                              )))
                    ],
                  ));
            }));
  }
}
