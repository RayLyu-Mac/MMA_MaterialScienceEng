import 'package:flutter/material.dart';
import 'package:mma_mse/customTile.dart';
import 'testRData.dart';
import 'package:mma_mse/customTileScroll.dart';

class tensileTResult extends StatefulWidget {
  tensileTResult({Key key}) : super(key: key);

  @override
  _tensileTResultState createState() => _tensileTResultState();
}

class _tensileTResultState extends State<tensileTResult> {
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
              DrawerHeader(child: Text("Test Result for Tensile Test")),
              for (var j = 0; j < result.length; j++)
                ScrollcustomListTile(
                  name: result[j].title,
                  pageTo: j,
                  fonts: 13,
                  controller: controller,
                  offset: 385,
                )
            ],
          ),
        );

    return Scaffold(
        appBar: AppBar(
          title: Text("Test Result for tensile test"),
        ),
        drawer: tensileResult(),
        body: ListView.builder(
            itemCount: result.length,
            itemExtent: 385,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  semanticContainer: true,
                  margin: EdgeInsets.fromLTRB(21, 16, 21, 8),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Text(
                          result[index].title,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                          top: 45,
                          left: 0,
                          child: Image.network(
                            result[index].addOnImg,
                            fit: BoxFit.fitWidth,
                            height: 220,
                          )),
                      Positioned(
                          top: 265,
                          left: 5,
                          child: Container(
                              width: _screenWidth / 1.2,
                              child: Text(
                                result[index].content,
                                style: TextStyle(fontSize: _screenH / 60),
                              )))
                    ],
                  ));
            }));
  }
}
