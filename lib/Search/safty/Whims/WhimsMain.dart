import 'package:flutter/material.dart';
import 'WhimsData.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhimsSymbols extends StatefulWidget {
  WhimsSymbols({Key? key}) : super(key: key);

  @override
  _WhimsSymbolsState createState() => _WhimsSymbolsState();
}

class _WhimsSymbolsState extends State<WhimsSymbols> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;
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

  List<WHIMSData> result = whims;
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    Drawer tensileResult() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("WHMIS Symbols for Potential Hazard")),
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
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
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
          title: Text(
            "WHMIS Symbols",
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
                  margin: EdgeInsets.fromLTRB(21, 16, 21, 12),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        result[index].title,
                        style: TextStyle(
                            fontSize: result[index].titleFontsize * 1.3,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.network(
                        result[index].addOnImg,
                        fit: BoxFit.fitWidth,
                        height: 225,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: _screenWidth / 1.2,
                          child: Text(
                            result[index].content,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: result[index].contentFontsize),
                          )),
                    ],
                  ));
            }));
  }
}
