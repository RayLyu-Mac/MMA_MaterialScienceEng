import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'tensileTestData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTile.dart';
import 'testResult.dart';

class TensileTest extends StatefulWidget {
  TensileTest({Key key}) : super(key: key);
  List<Widget> pages = [];

  @override
  _TensileTestState createState() => _TensileTestState();
}

class _TensileTestState extends State<TensileTest> {
  double _screenWidt;
  double _screenH;
  List<testdetailData> testBGdetail = testdetailData().detailL();
  List<Widget> pages = [];
  List listtile = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidt = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
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
        height: testBGdetail[j].height,
        length: testBGdetail[j].top,
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
              DrawerHeader(child: Text("Process For Meturllgical Analysis")),
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
