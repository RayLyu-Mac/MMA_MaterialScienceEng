import 'package:flutter/material.dart';
import 'testRData.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class tensileTResult extends StatefulWidget {
  tensileTResult({Key? key}) : super(key: key);

  @override
  _tensileTResultState createState() => _tensileTResultState();
}

class _tensileTResultState extends State<tensileTResult> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 1;
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

  List<testdetailData> result = testResult;
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    Drawer tensileResult() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Test Result for Tensile Test")),
              ExpansionTile(
                title: Text("Three Point Bend Test"),
                children: [
                  ScrollcustomListTile(
                      name: result[5].title,
                      pageTo: 5,
                      fonts: 13,
                      controller: controller),
                  ScrollcustomListTile(
                      name: result[6].title,
                      pageTo: 6,
                      fonts: 13,
                      controller: controller)
                ],
              ),
              for (var j = 0; j < result.length - 2; j++)
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
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Test Result for tensile test"),
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
        drawer: Container(
          width: _screenWidth / 1.7,
          child: tensileResult(),
        ),
        body: ListView.builder(
            itemCount: result.length,
            itemExtent: 395,
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
                  child: Column(
                    children: [
                      Text(
                        result[index].title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: double.infinity,
                        child: Image.network(
                          result[index].addOnImg,
                          fit: BoxFit.fitWidth,
                          height: 225,
                        ),
                      ),
                      Container(
                          width: _screenWidth / 1.2,
                          child: Text(
                            result[index].content,
                            style: TextStyle(fontSize: _screenH / 60),
                          ))
                    ],
                  ));
            }));
  }
}
