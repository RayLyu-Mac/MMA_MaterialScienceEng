import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'FractureData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTile.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/testResult.dart';

class FractureTest extends StatefulWidget {
  FractureTest({Key key}) : super(key: key);
  List<Widget> pages = [];

  @override
  _FractureTestState createState() => _FractureTestState();
}

class _FractureTestState extends State<FractureTest> {
  List<testdetailData> testBGdetail = testdetailData().detailL();
  List<Widget> pages = [];
  List listtile = [];
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  void initState() {
    super.initState();

    for (var j = 0; j < testBGdetail.length; j++) {
      listtile.add(testBGdetail[j].title);
      pages.add(pageMode(
        title: testBGdetail[j].title,
        content: testBGdetail[j].content,
        back_img: testBGdetail[j].backImg,
        addOnImg: testBGdetail[j].addOnImg,
        pageTo: testBGdetail[j].pageTo,
        height: testBGdetail[j].top,
        length: testBGdetail[j].height,
        width: testBGdetail[j].width,
        left: testBGdetail[j].left,
      ));
    }
    pages.add(tensileTResult());
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    Drawer meturAna() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Elastic Modulus Test by using MTS")),
              for (var k = 0; k < listtile.length; k++)
                customListTile(
                    name: listtile[k],
                    pageTo: k,
                    fonts: 13,
                    controller: controller)
            ],
          ),
        );
    return Scaffold(
        drawer: meturAna(),
        body: PageView(
          controller: controller,
          children: pages,
        ));
  }
}
