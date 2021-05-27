import 'package:flutter/material.dart';
import 'testRData.dart';

class tensileTResult extends StatefulWidget {
  tensileTResult({Key key}) : super(key: key);

  @override
  _tensileTResultState createState() => _tensileTResultState();
}

class _tensileTResultState extends State<tensileTResult> {
  double _screenWidth;
  double _screenH;
  double adjust;
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
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Scaffold(
        appBar: AppBar(
          title: Text("Test Result for tensile test"),
        ),
        body: ListView.builder(
            itemCount: result.length,
            itemExtent: 380,
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
                        top: 2.0,
                        left: 5.0,
                        child: Text(result[index].title),
                      ),
                      Positioned(
                          top: 30,
                          left: 0,
                          child: Image.network(
                            result[index].addOnImg,
                            fit: BoxFit.fitWidth,
                            height: 220,
                          )),
                      Positioned(
                          top: 255,
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
